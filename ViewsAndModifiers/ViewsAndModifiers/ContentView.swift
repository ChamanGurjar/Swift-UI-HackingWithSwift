//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by ChamanGurjar on 13/01/20.
//  Copyright © 2020 ChamanGurjar. All rights reserved.
//

import SwiftUI

//Custom View Modifier

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.blue)
    }
}

extension View {
    func titleStyle() -> some View {
        self.modifier(Title())
    }
}

struct ContentView: View {
    @State private var isWrong = false
    
    var body: some View {
        VStack(spacing: 30) {
            Text("Hello, World!")
                .titleStyle()
            
            Button(action: {
                self.isWrong.toggle()
            }) {
                Text(isWrong ? "Right" : "Wrong")
                    .font(.largeTitle)
                    .foregroundColor(.white)
            }
            .frame(width: 200, height: 70)
            .background(Color.blue)
            .clipShape(Capsule())
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
