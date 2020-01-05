//
//  ContentView.swift
//  WeSplit
//
//  Created by ChamanGurjar on 05/01/20.
//  Copyright © 2020 ChamanGurjar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Text("Hello, World!")
                }
            }
                // .navigationBarTitle(Text("We Split"), displayMode: .inline) // Small Size navigation bar title
                .navigationBarTitle("We Split")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
