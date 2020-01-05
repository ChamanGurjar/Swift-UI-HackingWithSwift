//
//  ContentView.swift
//  WeSplit
//
//  Created by ChamanGurjar on 05/01/20.
//  Copyright © 2020 ChamanGurjar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let students = ["Ajay", "Abhishek", "Abhijeet", "Shubham", "Vijay"]
    @State private var selectedStudent = 0
    var body: some View {
        VStack {
            Picker("Select your students", selection: $selectedStudent) {
                ForEach(0 ..< students.count) {
                    Text(self.students[$0])
                }
            }
            Text("You choose: Student # \(students[selectedStudent])")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
