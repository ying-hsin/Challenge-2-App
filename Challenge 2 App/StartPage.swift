//
//  Page1.swift
//  Challenge 2 App
//
//  Created by Lim Ying Hsin on 2/8/25.
//

import SwiftUI

struct Page1: View {
    var body: some View {
        Text("CHOOSE YOUR SONG")
            .font(.system(size:50))
        NavigationLink {
            // perform an action
            MainGame()
        } label: {
            Text("Song 1")
            
        }
        
    }
}

#Preview {
    Page1()
}
