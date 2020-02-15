//
//  ContentView.swift
//  iExpense
//
//  Created by ChamanGurjar on 15/02/20.
//  Copyright © 2020 ChamanGurjar. All rights reserved.
//

import SwiftUI

struct SecondView: View {
    var name: String
    
    var body: some View {
        Text("\(name)")
    }
}

struct ContentView: View {
    @State private var showingSheet = false
    
    var body: some View {
        Button("Show Sheet") {
            self.showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet) {
            SecondView(name: "This is the second Sheet")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
