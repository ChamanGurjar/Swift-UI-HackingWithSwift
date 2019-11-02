//
//  ContentView.swift
//  IDine
//
//  Created by Chaman Gurjar on 24/10/19.
//  Copyright © 2019 ChamanGurjar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    
    var body: some View {
        NavigationView {
            List {
                ForEach(menu) { section in
                    Section(header: Text(section.name)) {
                        
                        ForEach(section.items) { item in
                            //                            Text(item.name)
                            MenuRow(item: item)
                        }
                        
                    }
                }
            }.navigationBarTitle("Menu")
                .listStyle(GroupedListStyle())
            // .listStyle(PlainListStyle())
            //.listStyle(DefaultListStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    } 
}
