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
    @State var offsetE: CGFloat = 0
    
    @State var showButtonA: Bool = true
    @State var showButtonB: Bool = true
    @State var showButtonC: Bool = true
    @State var showButtonD: Bool = true
    @State var showButtonE: Bool = true
    
    @State private var tapCount: Int = 0
    
    @State var timeHasPassed: Bool = false
    
    @State var storedVar = 0
    
    let timer = Timer.publish(every: 60/100, on: .main, in: .common).autoconnect()
    func showA() {
        offsetA = 0
        showButtonA = true
        withAnimation(.linear(duration:1)) {
            offsetA = 1
        }
    }
    func showB() {
        offsetB = 0
        showButtonB = true
        withAnimation(.linear(duration:1)) {
            offsetB = 1
        }
    }
    func showC() {
        offsetC = 0
        withAnimation(.linear(duration:1)) {
            offsetC = 1
        }
    }
    func showD() {
        offsetD = 0
        withAnimation(.linear(duration:1)) {
            offsetD = 1
        }
    }
    func showE() {
        offsetE = 0
        withAnimation(.linear(duration:1)) {
            offsetE = 1
        }
    }
    
    var body: some View {
        if timeHasPassed == true {
            ScorePage(tapCount: $tapCount)
        } else {
            GeometryReader { geometry in
                VStack {
                    Text("tap count: \(tapCount)")
                    HStack {
                        Divider()
                        
                        
                        Rectangle()
                            .fill(.black)
                            .frame(width:130, height:180)
                            .onTapGesture {
                                tapCount += 1
                                showButtonA = false
                            }
                            .opacity(showButtonA == false ? 0:1)
                            .offset(y: (geometry.size.height+360) * offsetA - (geometry.size.height+360)/2)
                        Divider()
                        Rectangle()
                            .frame(width:130, height:180)
                            .onTapGesture {
                                tapCount += 1
                                showButtonB = false
                            }
                            .opacity(showButtonB == false ? 0:1)
                            .offset(y: (geometry.size.height+360) * offsetB - (geometry.size.height+360)/2)
                        Divider()
                        Rectangle()
                            .frame(width:130, height:180)
                            .onTapGesture {
                                tapCount += 1
                                showButtonC = false
                            }
                            .opacity(showButtonC == false ? 0:1)
                            .offset(y:(geometry.size.height+360) * offsetC - (geometry.size.height+360)/2)
                        Divider()
                        Rectangle()
                            .frame(width:130, height:180)
                            .onTapGesture {
                                tapCount += 1
                                showButtonD = false
                            }
                            .opacity(showButtonD == false ? 0:1)
                            .offset(y:(geometry.size.height+360) * offsetD - (geometry.size.height+360)/2)
                        Divider()
                        Rectangle()
                            .frame(width:130, height:180)
                            .onTapGesture {
                                tapCount += 1
                                showButtonE = false
                            }
                            .opacity(showButtonE == false ? 0:1)
                            .offset(y:(geometry.size.height+360) * offsetE - (geometry.size.height+360)/2)
                        Divider()
                    }
                }
            }
            .onAppear {
                play(sound: "sample audio.mp3")
            }
            .onReceive(timer) { _ in
                var randomInt = Int.random(in: 1..<6)
                while randomInt == storedVar {
                    randomInt = Int.random(in: 1..<6)
                }
                storedVar = randomInt
                if randomInt == 1 {
                    showA()
                } else if randomInt == 2 {
                    showB()
                } else if randomInt == 3 {
                    showC()
                } else if randomInt == 4 {
                    showD()
                } else {
                    showE()
                }
            }
            .task {
                try? await Task.sleep(for: .seconds(9))
                stop(sound: "sample audio.mp3")
                timeHasPassed = true
            }
        }
    }
}









#Preview {
    AudioPlayerView()
}
