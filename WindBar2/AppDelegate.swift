//
//  AppDelegate.swift
//  WindBar2
//
//  Created by FPV-dB
//

import Cocoa
import SwiftUI
import Combine

class AppDelegate: NSObject, NSApplicationDelegate {

    var statusItem: NSStatusItem?
    let weatherManager = WeatherManager()
    var popover: NSPopover?
    var cancellables = Set<AnyCancellable>()

    func applicationDidFinishLaunching(_ notification: Notification) {
        
        // Remove app from dock - menu bar only
        NSApp.setActivationPolicy(.accessory)

        // Create status bar item
        statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
        
        guard let button = statusItem?.button else {
            print("Failed to create status item button")
            return
        }
        
        button.title = "💨 WindBar"
        button.target = self
        button.action = #selector(togglePopover)

        // Create SwiftUI popover view
        let view = WindBarView().environmentObject(weatherManager)
        let hosting = NSHostingController(rootView: view)

        let pop = NSPopover()
        pop.behavior = .transient
        pop.contentSize = NSSize(width: weatherManager.layout.width, height: 460)
        pop.contentViewController = hosting
        popover = pop

        // Update status bar when wind changes
        weatherManager.$windSpeedDisplayed
            .receive(on: RunLoop.main)
            .sink { [weak self] text in
                guard let button = self?.statusItem?.button else { return }
                button.title = text ?? "—"
            }
            .store(in: &cancellables)

        // Adjust popover width when layout changes
        weatherManager.$layout
            .receive(on: RunLoop.main)
            .sink { [weak self] layout in
                self?.popover?.contentSize.width = layout.width
            }
            .store(in: &cancellables)

        // First load
        weatherManager.refresh()
    }

    @objc func togglePopover() {
        guard let button = statusItem?.button else { return }

        if let pop = popover, pop.isShown {
            pop.performClose(nil)
        } else {
            popover?.show(relativeTo: button.bounds,
                          of: button,
                          preferredEdge: .minY)
        }
    }
}
