//
//  AudioPlayerView.swift
//  Challenge 2 App
//
//  Created by Xiuqi Lin on 23/8/25.
//

import SwiftUI
import Subsonic

struct AudioPlayerView: View {
    @State var offsetA: CGFloat = 0
    @State var offsetB: CGFloat = 0
    @State var offsetC: CGFloat = 0
    @State var offsetD: CGFloat = 0
    let timer = Timer.publish(every: 60/100, on: .main, in: .common).autoconnect()
    func showA() {
        offsetA = 0
        withAnimation(.linear) {
            offsetA = 1
        }
    }
    func showB() {
        offsetB = 0
        withAnimation(.linear) {
            offsetB = 1
        }
    }
    func showC() {
        offsetC = 0
        withAnimation(.linear) {
            offsetC = 1
        }
    }
    func showD() {
        offsetD = 0
        withAnimation(.linear) {
            offsetD = 1
        }
    }
                
    var body: some View {
        GeometryReader { geometry in
            HStack {
                Divider()
                Rectangle()
                    .frame(width:150, height:180)
                    .offset(y: (geometry.size.height+360) * offsetA - (geometry.size.height+360)/2)
                Divider()
                Rectangle()
                    .frame(width:150, height:180)
                    .offset(y: (geometry.size.height+360) * offsetB - (geometry.size.height+360)/2)
                Divider()
                Rectangle()
                    .frame(width:150, height:180)
                    .offset(y:(geometry.size.height+360) * offsetC - (geometry.size.height+360)/2)
                Divider()
                Rectangle()
                    .frame(width:150, height:180)
                    .offset(y:(geometry.size.height+360) * offsetD - (geometry.size.height+360)/2)
                Divider()
            }
        }
        .onReceive(timer) { _ in
            let randomInt = Int.random(in: 1..<5)
            if randomInt == 1 {
                showA()
            } else if randomInt == 2 {
                showB()
            } else if randomInt == 3 {
                showC()
            } else {
                showD()
            }
        }
    }
}




#Preview {
    AudioPlayerView()
}
