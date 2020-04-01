//
//  ContentView.swift
//  CoreDataProject
//
//  Created by ChamanGurjar on 31/03/20.
//  Copyright © 2020 ChamanGurjar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(entity: Ship.entity(), sortDescriptors: [], predicate: NSPredicate(format: "universe == 'Star Wars'")) var ships: FetchedResults<Ship>
    
    /**
     Predicates =>
     
     1. NSPredicate(format: "universe == %@", "Star Wars"))
     2. NSPredicate(format: "name < %@", "F")) var ships: FetchedResults<Ship>
     3. NSPredicate(format: "universe IN %@", ["Aliens", "Firefly", "Star Trek"])
     4. NSPredicate(format: "name BEGINSWITH %@", "E"))
     5. NSPredicate(format: "name BEGINSWITH[c] %@", "e"))
     6. NSPredicate(format: "NOT name BEGINSWITH[c] %@", "e"))
     
     A great article = https://www.hackingwithswift.com/books/ios-swiftui/filtering-fetchrequest-using-nspredicate
     
     */
    
    var body: some View {
        Text("")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
