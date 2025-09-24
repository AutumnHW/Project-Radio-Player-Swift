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
    var body: some Scene {
        WindowGroup {
            TabView{
                prfmView()
                    .tabItem{
                        Label("ProjectFM", systemImage: "mic")
                    }
                
                RuggedRaw94()
                    .tabItem{
                        Label("RuggedRaw94", systemImage: "mic")
                    }
                DogStarFM()
                    .tabItem{
                        Label("DogStarFM", systemImage: "mic")
                    }
                
            }
        }
        }
    }

