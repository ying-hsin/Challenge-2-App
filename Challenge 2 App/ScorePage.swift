//
//  ScorePage.swift
//  Challenge 2 App
//
//  Created by Lim Ying Hsin on 2/8/25.
//

import SwiftUI

struct ScorePage: View {
    @Binding var tapCount: Int
    
    var body: some View {
        NavigationStack {
            Text("Great job!")
                .font(.system(size:30))
            Text("Score: \(tapCount)")
            Text("Missed:")
            HStack (spacing:30){
                NavigationLink("Restart") {
                    AudioPlayerView()
                }
                NavigationLink("Quit") {
                    ContentView()
                }
                .navigationBarBackButtonHidden(true)
            }
        }
    }
}


#Preview {
    @Previewable @State var tapCount: Int = 300
    ScorePage(tapCount: $tapCount)
}
