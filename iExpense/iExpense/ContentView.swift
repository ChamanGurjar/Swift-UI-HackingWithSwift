//
//  ContentView.swift
//  iExpense
//
//  Created by ChamanGurjar on 15/02/20.
//  Copyright © 2020 ChamanGurjar. All rights reserved.
//

import SwiftUI



struct ContentView: View {
    @State private var numbers = [Int]()
    @State private var currentNumber = 1
    
    var body: some View {
        
        VStack {
            List {
                ForEach(numbers, id: \.self) {
                    Text("\($0)")
                }
                .onDelete(perform: removeRows(at:))
            }
            
            Button("Add Number") {
                self.numbers.append(self.currentNumber)
                self.currentNumber += 1
            }
            
        }
    }
    
    private func removeRows(at offset: IndexSet) {
        numbers.remove(atOffsets: offset)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
