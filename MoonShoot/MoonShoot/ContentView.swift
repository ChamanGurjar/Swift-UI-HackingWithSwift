//
//  ContentView.swift
//  MoonShoot
//
//  Created by ChamanGurjar on 16/02/20.
//  Copyright © 2020 ChamanGurjar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: Text("Hi User")) {
                    Text("Hello World")
                }
            }
            .navigationBarTitle("SwiftUi")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
