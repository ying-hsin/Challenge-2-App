//
//  ScorePage.swift
//  Challenge 2 App
//
//  Created by Lim Ying Hsin on 2/8/25.
//

import SwiftUI

struct ScorePage: View {
    var body: some View {
        Text("Score")
            .font(.system(size:30))
        Text("Good:")
        Text("Missed")
        Button {
            // perform an action
            print("Restart")
        } label: {
            // the buttons label, whats presented
            Text("Restart")
            
    }

    }
}

#Preview {
    ScorePage()
}
