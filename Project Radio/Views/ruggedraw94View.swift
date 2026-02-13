//
//  radioPlayerView.swift
//  Project Radio
//
//  Created by Autumn Williams on 9/22/25.
//

import SwiftUI

struct ruggedraw94View: View {
    var body: some View {
        VStack {
            createButton(label: "Play") {
                AudioManager.shared.playRadio(source:"https://signal.projectradio.org/listen/ruggedraw94/radio.mp3")
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
#Preview {
    dogstarfmView()
}
