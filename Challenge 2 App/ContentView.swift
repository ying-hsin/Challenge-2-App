//
//  ContentView.swift
//  Challenge 2 App
//
//  Created by Lim Ying Hsin on 2/8/25.
//

import SwiftUI
import AVFAudio

struct ContentView: View {
    @State private var audioPlayer: AVAudioPlayer?
    
    var body: some View {
        AudioPlayerView(fileName: "Sample Audio")
    }
}

#Preview {
    ContentView()
}
