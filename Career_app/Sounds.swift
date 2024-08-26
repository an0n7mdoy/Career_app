//
//  Sounds.swift
//  Career_app
//
//  Created by Simonchik on 26.08.2024.
//

import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.numberOfLoops = -1 
            audioPlayer?.play()
        } catch {
            print("Sound not found!")
        }
    }
}

func stopMusic() {
    audioPlayer?.stop()
}

func resumeMusic() {
    audioPlayer?.play()
}
