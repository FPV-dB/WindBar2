//
//  WindBar2App.swift
//  WindBar2
//
//  Created by FPV-dB
//

import SwiftUI

@main
struct WindBar2App: App {

    // Hook up the NSApplication delegate
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        Settings {
            // No visible settings window
            EmptyView()
        }
    }
}
