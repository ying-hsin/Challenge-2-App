//
//  ScorePage.swift
//  Challenge 2 App
//
//  Created by Lim Ying Hsin on 2/8/25.
//

import SwiftUI

struct ScorePage: View {
    var body: some View {
        NavigationStack {
            Text("Score")
                .font(.system(size:30))
            Text("Excellent:")
            Text("Good:")
            Text("Fair:")
            Text("Missed:")
            HStack (spacing:30){
                NavigationLink("Restart") {
                    AudioPlayerView()
                }
                NavigationLink("Quit") {
                    ContentView()
                }
            }
        }
    }
}

#Preview {
    ScorePage()
}
