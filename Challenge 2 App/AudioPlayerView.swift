//
//  AudioPlayerView.swift
//  Challenge 2 App
//
//  Created by Xiuqi Lin on 23/8/25.
//

import SwiftUI
import AVKit

struct AudioPlayerView: View {
    var fileName: String?
    var url: URL?
    
    @State var player: AVAudioPlayer?
    @State var isPlaying = false
    
    var body: some View {
        NavigationStack {
            VStack {
                if player != nil {
                    Text(fileName ?? "File")
                    NavigationLink("Play") {
                        GamePage()
                    }
                }
            }
        }
    }
}


#Preview {
    AudioPlayerView()
}
