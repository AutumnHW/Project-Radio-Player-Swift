//
//  Project_RadioApp.swift
//  Project Radio
//
//  Created by Autumn Williams on 9/22/25.
//

import SwiftUI
import AVFoundation

@main
struct Project_RadioApp: App {
    init() {
        AudioManager.shared.activateSession()
    }

    var body: some Scene {
        WindowGroup {
            TabView {
                prfmView()
                    .tabItem { Label("ProjectFM", systemImage: "mic") }
                ruggedraw94View()
                    .tabItem { Label("RuggedRaw94", systemImage: "mic") }
                dogstarfmView()
                    .tabItem { Label("DogStarFM", systemImage: "mic") }
            }.padding(10)
        }
    }
}

