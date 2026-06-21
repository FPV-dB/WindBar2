import AppKit
import Combine

struct AircraftProfile {
    let name: String
    let maxWindKmh: Double
    let maxGustKmh: Double
}

enum AircraftProfileID: String, CaseIterable, Identifiable {
    case djiNeo2
    case djiAvata2
    case tinywhoop
    case custom

    var id: String { rawValue }

    var displayName: String {
        switch self {
        case .djiNeo2: return "DJI Neo 2"
        case .djiAvata2: return "DJI Avata 2"
        case .tinywhoop: return "65mm Tinywhoop"
        case .custom: return "Custom"
        }
    }

    func profile(customName: String, customMaxWindKmh: Double, customMaxGustKmh: Double) -> AircraftProfile {
        switch self {
        case .djiNeo2:
            return AircraftProfile(name: displayName, maxWindKmh: 20, maxGustKmh: 24)
        case .djiAvata2:
            return AircraftProfile(name: displayName, maxWindKmh: 30, maxGustKmh: 40)
        case .tinywhoop:
            return AircraftProfile(name: displayName, maxWindKmh: 15, maxGustKmh: 20)
        case .custom:
            return AircraftProfile(
                name: customName.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ? displayName : customName,
                maxWindKmh: max(1, customMaxWindKmh),
                maxGustKmh: max(1, customMaxGustKmh)
            )
        }
    }
}

enum FlightCondition: Int, CaseIterable, Comparable {
    case good
    case caution
    case warning
    case alert

    static func < (lhs: FlightCondition, rhs: FlightCondition) -> Bool {
        lhs.rawValue < rhs.rawValue
    }

    var label: String {
        switch self {
        case .good: return "GOOD"
        case .caution: return "CAUTION"
        case .warning: return "WARNING"
        case .alert: return "ALERT"
        }
    }

    fileprivate var statusSymbolName: String {
        switch self {
        case .good: return "wind"
        case .caution: return "wind.circle"
        case .warning: return "wind.circle.fill"
        case .alert: return "exclamationmark.triangle.fill"
        }
    }
}

@MainActor
final class DroneWindStatusManager: ObservableObject {
    static let selectedProfileKey = "droneWind.selectedAircraftProfile"
    static let customNameKey = "droneWind.customAircraftName"
    static let customMaxWindKey = "droneWind.customMaxWindKmh"
    static let customMaxGustKey = "droneWind.customMaxGustKmh"

    @Published private(set) var selectedProfile: AircraftProfile
    @Published private(set) var selectedProfileID: AircraftProfileID
    @Published private(set) var condition: FlightCondition?
    @Published private(set) var reason = "Waiting for weather data"
    @Published private(set) var currentWindKmh: Double?
    @Published private(set) var currentGustKmh: Double?

    private var customName: String
    private var customMaxWindKmh: Double
    private var customMaxGustKmh: Double

    init(defaults: UserDefaults = .standard) {
        let storedID = defaults.string(forKey: Self.selectedProfileKey) ?? AircraftProfileID.djiNeo2.rawValue
        let profileID = AircraftProfileID(rawValue: storedID) ?? .djiNeo2
        let name = defaults.string(forKey: Self.customNameKey) ?? "Custom Drone"
        let maxWind = defaults.object(forKey: Self.customMaxWindKey) == nil
            ? 20
            : defaults.double(forKey: Self.customMaxWindKey)
        let maxGust = defaults.object(forKey: Self.customMaxGustKey) == nil
            ? 25
            : defaults.double(forKey: Self.customMaxGustKey)

        selectedProfileID = profileID
        customName = name
        customMaxWindKmh = maxWind
        customMaxGustKmh = maxGust
        selectedProfile = profileID.profile(
            customName: name,
            customMaxWindKmh: maxWind,
            customMaxGustKmh: maxGust
        )
    }

    func configure(
        profileID: String,
        customName: String,
        customMaxWindKmh: Double,
        customMaxGustKmh: Double
    ) {
        selectedProfileID = AircraftProfileID(rawValue: profileID) ?? .djiNeo2
        self.customName = customName
        self.customMaxWindKmh = customMaxWindKmh
        self.customMaxGustKmh = customMaxGustKmh
        selectedProfile = selectedProfileID.profile(
            customName: customName,
            customMaxWindKmh: customMaxWindKmh,
            customMaxGustKmh: customMaxGustKmh
        )
        evaluateCurrentWeather()
    }

    func update(windKmh: Double?, gustKmh: Double?) {
        currentWindKmh = windKmh
        currentGustKmh = gustKmh
        evaluateCurrentWeather()
    }

    static func evaluate(windKmh: Double, gustKmh: Double, profile: AircraftProfile) -> FlightCondition {
        max(
            condition(for: windKmh / max(profile.maxWindKmh, 1)),
            condition(for: gustKmh / max(profile.maxGustKmh, 1))
        )
    }

    private func evaluateCurrentWeather() {
        guard let wind = currentWindKmh, let gust = currentGustKmh else {
            condition = nil
            reason = "Waiting for weather data"
            return
        }

        let windRatio = wind / max(selectedProfile.maxWindKmh, 1)
        let gustRatio = gust / max(selectedProfile.maxGustKmh, 1)
        let windCondition = Self.condition(for: windRatio)
        let gustCondition = Self.condition(for: gustRatio)
        condition = max(windCondition, gustCondition)

        guard let condition else { return }
        if condition == .good {
            reason = "Wind and gusts are comfortably within aircraft limits"
            return
        }

        let source = gustRatio >= windRatio ? "Gusts" : "Sustained wind"
        switch condition {
        case .good:
            reason = "Wind and gusts are comfortably within aircraft limits"
        case .caution:
            reason = "\(source) approaching aircraft limits"
        case .warning:
            reason = "\(source) close to aircraft limits"
        case .alert:
            reason = "\(source) exceed aircraft limits"
        }
    }

    private static func condition(for ratio: Double) -> FlightCondition {
        switch ratio {
        case ..<0.7: return .good
        case ..<0.9: return .caution
        case ...1.0: return .warning
        default: return .alert
        }
    }
}

enum DroneMenuBarIcon {
    static func image(for condition: FlightCondition?) -> NSImage {
        let statusSymbol = condition?.statusSymbolName ?? "questionmark.circle"
        let symbolNames = ["drone.fill", statusSymbol]
        let configuration = NSImage.SymbolConfiguration(pointSize: 13, weight: .medium)
        let symbols = symbolNames.compactMap { name in
            (NSImage(systemSymbolName: name, accessibilityDescription: nil)
                ?? NSImage(systemSymbolName: name == "drone.fill" ? "airplane" : "questionmark.circle", accessibilityDescription: nil))?
                .withSymbolConfiguration(configuration)
        }

        let image = NSImage(size: NSSize(width: 34, height: 18), flipped: false) { _ in
            for (index, symbol) in symbols.enumerated() {
                symbol.draw(in: NSRect(x: CGFloat(index * 18), y: 1, width: 16, height: 16))
            }
            return true
        }
        image.isTemplate = true
        return image
    }
}
