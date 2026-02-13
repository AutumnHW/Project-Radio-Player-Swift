//
//  radioPlayerView.swift
//  Project Radio
//
//  Created by Autumn Williams on 9/22/25.
//

import SwiftUI

struct radioPlayerView: View {
    var body: some View {
        VStack {
            createButton(label: "Start") {
                AudioManager.shared.playRadio(source:"https://signal.projectradio.org/listen/prfm/radio.mp3")
            }
            
            createButton(label: "Play") {
                AudioManager.shared.play()
            }
            
            createButton(label: "Pause") {
                AudioManager.shared.pause()
            }
        }
    }
    
    private func createButton(
        label: String,
        action: @escaping () -> Void
    ) -> some View {
        return Button(label, action: action)
            .padding()
            .background(Color.blue)
            .cornerRadius(20)
            .foregroundColor(.white)
    }
}
