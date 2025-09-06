//
//  AudioPlayerView.swift
//  Challenge 2 App
//
//  Created by Xiuqi Lin on 23/8/25.
//

import SwiftUI
import Subsonic

struct AudioPlayerView: View {
    @State var offset: CGFloat = 0
    let timer = Timer.publish(every: 60/100, on: .main, in: .common).autoconnect()
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Button("move") {
                    withAnimation(.linear(duration: 2)) {
                        offset = 1
                    }
                }
                HStack {
                    Divider()
                    Rectangle()
                        .frame(width:150, height:180)
                        .offset(y: (geometry.size.height+360) * offset - (geometry.size.height+360)/2)
                    Divider()
                    Rectangle()
                        .frame(width:150, height:180)
                        .offset(y: 50)
                    Divider()
                    Rectangle()
                        .frame(width:150, height:180)
                        .offset(y:-20)
                    Divider()
                    Rectangle()
                        .frame(width:150, height:180)
                        .offset(y:20)
                    Divider()
                }
            }
        }
        .onReceive(timer) { _ in
            offset = 0
            withAnimation(.linear) {
               offset = 1
            }
        }
    }
}




#Preview {
    AudioPlayerView()
}
