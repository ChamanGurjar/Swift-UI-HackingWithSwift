//
//  MenuRowDesign.swift
//  IDine
//
//  Created by Chaman Gurjar on 24/10/19.
//  Copyright © 2019 ChamanGurjar. All rights reserved.
//

import SwiftUI

struct MenuRow: View {
    
    var item: MenuItem
    
    var body: some View {
        HStack {
            Image(item.thumbnailImage).clipShape(Circle())
            
            VStack(alignment: .leading) {
                Text(item.name)
                Text("RS \(item.price)")
            }
            
        }
    }
}

struct MenuRow_Previews: PreviewProvider {
    static var previews: some View {
        MenuRow(item: MenuItem.example)
    }
}
