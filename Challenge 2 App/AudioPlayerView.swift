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
    
    @State var showButtonA: Bool = true
    @State var showButtonB: Bool = true
    @State var showButtonC: Bool = true
    @State var showButtonD: Bool = true
    
    @State var tapCount = 0
    
    let timer = Timer.publish(every: 60/100, on: .main, in: .common).autoconnect()
    func showA() {
        offsetA = 0
        showButtonA = true
        withAnimation(.linear(duration:3)) {
            offsetA = 1
        }
    }
    func showB() {
        offsetB = 0
        showButtonB = true
        withAnimation(.linear(duration:3)) {
            offsetB = 1
        }
    }
    func showC() {
        offsetC = 0
        withAnimation(.linear(duration:3)) {
            offsetC = 1
        }
    }
    func showD() {
        offsetD = 0
        withAnimation(.linear(duration:3)) {
            offsetD = 1
        }
    }
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Text("tap count: \(tapCount)")
                HStack {
                    Divider()
                    
                    
                    Rectangle()
                        .fill(.black)
                        .frame(width:150, height:180)
                        .onTapGesture {
                            tapCount += 1
                            showButtonA = false
                        }
                        .opacity(showButtonA == false ? 0:1)
                        .offset(y: (geometry.size.height+360) * offsetA - (geometry.size.height+360)/2)
                    
                    
                    Divider()
                    Rectangle()
                        .frame(width:150, height:180)
                        .onTapGesture {
                            tapCount += 1
                            showButtonB = false
                        }
                        .opacity(showButtonB == false ? 0:1)
                        .offset(y: (geometry.size.height+360) * offsetB - (geometry.size.height+360)/2)
                    Divider()
                    Rectangle()
                        .frame(width:150, height:180)
                        .onTapGesture {
                            tapCount += 1
                            showButtonC = false
                        }
                        .opacity(showButtonC == false ? 0:1)
                        .offset(y:(geometry.size.height+360) * offsetC - (geometry.size.height+360)/2)
                    Divider()
                    Rectangle()
                        .frame(width:150, height:180)
                        .onTapGesture {
                            tapCount += 1
                            showButtonD = false
                        }
                        .opacity(showButtonD == false ? 0:1)
                        .offset(y:(geometry.size.height+360) * offsetD - (geometry.size.height+360)/2)
                    Divider()
                }
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
