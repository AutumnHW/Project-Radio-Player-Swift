//
//  playRadio.swift
//  Project Radio
//
//  Created by Autumn Williams on 9/22/25.
//

import Foundation
import AVFoundation
final class AudioManager {
  static let shared = AudioManager()

   var player: AVPlayer?

   var session = AVAudioSession.sharedInstance()

  private init() {}
 func activateSession() {
        do {
            try session.setCategory(
                .playback,
                mode: .default,
                //policy: .longFormAudio,
                options: [.mixWithOthers]
            )
        } catch _ {}
        
        do {
            try session.setActive(true, options: .notifyOthersOnDeactivation)
        } catch _ {}
        
  
    }
    func playRadio(source: String){
        let url = URL(string: source)
        let playerItem: AVPlayerItem = AVPlayerItem(url: url!)
        if let player = player {
                    player.replaceCurrentItem(with: playerItem)
                } else {
                    player = AVPlayer(playerItem: playerItem)
                }
                
                if let player = player {
                    player.play()
                }
            }
    func play() {
            if let player = player {
                player.play()
            }
        }

    func pause() {
            if let player = player {
                player.pause()
            }
        }

    func getPlaybackDuration() -> Double {
            guard let player = player else {
                return 0
            }
         
            return player.currentItem?.duration.seconds ?? 0
        }
        
    }




