//
//  ContentView.swift
//  IDine
//
//  Created by Chaman Gurjar on 24/10/19.
//  Copyright © 2019 ChamanGurjar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Text("Hello World")
                Text("Hello World")
                Text("Hello World")
            }.navigationBarTitle("Menu")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    } 
}
