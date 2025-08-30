//
//  AudioPlayerView.swift
//  Challenge 2 App
//
//  Created by Xiuqi Lin on 23/8/25.
//

import SwiftUI
import Subsonic

struct AudioPlayerView: View {
    var body: some View {
        Button("stop") {
            stop(sound:"sample audio.mp3")
        }
    }
}



#Preview {
    AudioPlayerView()
}
