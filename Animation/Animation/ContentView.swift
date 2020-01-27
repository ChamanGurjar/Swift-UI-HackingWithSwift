//
//  ContentView.swift
//  Animation
//
//  Created by ChamanGurjar on 27/01/20.
//  Copyright © 2020 ChamanGurjar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var dragAmount = CGSize.zero
    
    var body: some View {
        
        LinearGradient(gradient: Gradient(colors: [.yellow, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .frame(width: 300, height: 200)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .offset(dragAmount)
            .gesture(
                DragGesture()
                    .onChanged { self.dragAmount = $0.translation }
                    .onEnded {_ in self.dragAmount = .zero}     
        )
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
