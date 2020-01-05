//
//  ContentView.swift
//  WeSplit
//
//  Created by ChamanGurjar on 05/01/20.
//  Copyright © 2020 ChamanGurjar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""   // Using @State you can change the property in a method in struct without using the mutating keyword.
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Enter your name here", text: $name) // $ is used for 2 way binding here.
                Text("Your name is : \(name)")
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
