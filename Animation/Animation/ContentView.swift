//
//  ContentView.swift
//  Animation
//
//  Created by ChamanGurjar on 27/01/20.
//  Copyright © 2020 ChamanGurjar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let letters = Array("Chaman Gurjar")
    let colorsArray = [Color.gray, Color.green, Color.yellow, Color.blue, Color.black]
    @State private var dragAmount = CGSize.zero
    @State private var enabled = false
    
    @State private var animationAmount = 0.0
    
    var body: some View {
        VStack(spacing: 20) {
            HStack(spacing: 0) {
                ForEach(0..<letters.count) { num in
                    Text(String(self.letters[num]))
                        .padding(5)
                        .font(.title)
                        .background(self.enabled ? Color.blue : Color.red)
                        .offset(self.dragAmount)
                        .animation(Animation.default.delay(Double(num)/20))
                }
            }
            .gesture(
                DragGesture()
                    .onChanged { self.dragAmount = $0.translation }
                    .onEnded { _ in
                        self.dragAmount = CGSize.zero
                        self.enabled.toggle()
                }
            )
            
            Button("Tap Me")
            {
                //                self.background(self.colorsArray.randomElement() ?? Color.red)
                withAnimation {
                    self.animationAmount += 360
                }
            }
            .padding(50)
            .foregroundColor(Color.white)
                //.background(Color.red)
                .background(self.colorsArray.randomElement() ?? Color.red)
                .clipShape(Circle())
                .rotation3DEffect(.degrees(animationAmount), axis: (x: 0, y: 1, z: 0))
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
