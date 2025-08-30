//
//  ContentView.swift
//  Challenge 2 App
//
//  Created by Lim Ying Hsin on 2/8/25.
//

import SwiftUI
import Subsonic

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("CHOOSE YOUR SONG")
                    .font(.system(size:50))
                    .padding()
                ScrollView {
                    VStack(spacing: 40) {
                        NavigationLink("Song1") {
                            AudioPlayerView()
                                .onAppear {
                                    play(sound: "sample audio.mp3")
                                }
                        }
                        Text("Song2")
                        Text("Song3")
                        Text("Song4")
                        Text("Song5")
                        Text("Song6")
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
