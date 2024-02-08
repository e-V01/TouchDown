//
//  TouchDownApp.swift
//  TouchDown
//
//  Created by Y K on 01.02.2024.
//

import SwiftUI

@main
struct TouchDownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
