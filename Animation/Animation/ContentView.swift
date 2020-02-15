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
    @State private var opacity = 0.0
    
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
            
            Button("Tap Me - Y")
            {
                //                self.background(self.colorsArray.randomElement() ?? Color.red)
                withAnimation {
                    self.animationAmount += 360
                    self.opacity = self.opacity == 1.0 ? 0.25 : (self.opacity + 0.25)
                }
            }
            .padding(50)
            .foregroundColor(Color.white)
                //.background(Color.red)
                .background(self.colorsArray.randomElement() ?? Color.red)
                .clipShape(Circle())
                .rotation3DEffect(.degrees(animationAmount), axis: (x: 0, y: 1, z: 0))
            
            HStack(spacing: 50) {
                Button("  X  "){}
                    .padding(15)
                    .foregroundColor(Color.white)
                    .background(self.colorsArray.randomElement() ?? Color.red)
                    .clipShape(Circle())
                    .opacity(self.opacity)
                    .rotation3DEffect(.degrees(animationAmount), axis: (x: 1, y: 0, z: 0))
                
                Button("  Z  "){}
                    .padding(15)
                    .foregroundColor(Color.white)
                    .background(self.colorsArray.randomElement() ?? Color.red)
                    .clipShape(Circle())
                    .opacity(self.opacity)
                    .rotation3DEffect(.degrees(animationAmount), axis: (x: 0, y: 0, z: 1))
                
                Button("XYZ"){}
                    .padding(15)
                    .foregroundColor(Color.white)
                    .background(self.colorsArray.randomElement() ?? Color.red)
                    .clipShape(Circle())
                    .opacity(self.opacity)
                    .rotation3DEffect(.degrees(animationAmount), axis: (x: 1, y: 1, z: 1))
            }
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
