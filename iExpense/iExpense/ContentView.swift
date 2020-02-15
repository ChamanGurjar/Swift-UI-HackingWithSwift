//
//  ContentView.swift
//  iExpense
//
//  Created by ChamanGurjar on 15/02/20.
//  Copyright © 2020 ChamanGurjar. All rights reserved.
//

import SwiftUI



struct ContentView: View {
    
    @State private var tapCount = UserDefaults.standard.integer(forKey: "Tap")
    
    var body: some View {
        Button("Tap Count : \(tapCount)") {
            self.tapCount += 1
            UserDefaults.standard.set(self.tapCount, forKey: "Tap")
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
