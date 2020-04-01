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
    @FetchRequest(entity: Wizard.entity(), sortDescriptors: []) var wizards: FetchedResults<Wizard>
    
    var body: some View {
        VStack {
            List(wizards, id: \.self) { wizard in
                Text(wizard.name ?? "Unknown")
            }
            
            Button("Add") {
                let wizard = Wizard(context: self.moc)
                wizard.name = "Dumbldoor"
            }
            
            Button("Save") {
                do {
                    try self.moc.save()
                } catch {
                    print (error.localizedDescription)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
