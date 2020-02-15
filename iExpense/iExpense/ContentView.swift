//
//  ContentView.swift
//  iExpense
//
//  Created by ChamanGurjar on 15/02/20.
//  Copyright © 2020 ChamanGurjar. All rights reserved.
//

import SwiftUI

struct User {
    var firstName: String = "Chaman"
    var lastName: String = "Gurjar"
}

struct ContentView: View {
    @State private var user = User()
    
    var body: some View {
        VStack() {
            Text("Your name is \(user.firstName) \(user.lastName)")
            TextField("Enter your first name here", text: $user.firstName)
            TextField("Enter your last name here", text: $user.lastName)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
