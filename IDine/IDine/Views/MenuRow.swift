//
//  MenuRowDesign.swift
//  IDine
//
//  Created by Chaman Gurjar on 24/10/19.
//  Copyright © 2019 ChamanGurjar. All rights reserved.
//

import SwiftUI

struct MenuRow: View {
    let colors: [String: Color] = ["D": .purple, "G": .black, "N": .red, "S": .blue, "V": .green]
    var item: MenuItem
    
    var body: some View {
        HStack {
            Image(item.thumbnailImage)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.gray, lineWidth: 2.0))
            
            VStack(alignment: .leading) {
                Text(item.name)
                    .font(.headline)
                Text("RS \(item.price)")
            }.layoutPriority(1)
            
            Spacer()
            
            ForEach(item.restrictions, id: \.self) {
                restriction in
                Text(restriction)
                    .font(.caption)
                    .fontWeight(.black)
                    .padding(5)
                    .background(self.colors[restriction])
                    .clipShape(Circle())
                    .foregroundColor(.white)
                
            }
            
        }
    }
}

struct MenuRow_Previews: PreviewProvider {
    static var previews: some View {
        MenuRow(item: MenuItem.example)
    }
}
