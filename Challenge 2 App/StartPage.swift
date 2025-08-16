//
//  Page1.swift
//  Challenge 2 App
//
//  Created by Lim Ying Hsin on 2/8/25.
//

import SwiftUI

struct Page1: View {
    var body: some View {
        NavigationStack {
        VStack {
            Text("CHOOSE YOUR SONG")
                .font(.system(size:50))
                .padding()
            ScrollView {
                VStack(spacing: 40) {
                    NavigationLink("Song1") {
                        MainGame()
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
    Page1()
}
