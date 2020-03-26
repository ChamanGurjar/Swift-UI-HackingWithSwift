//
//  CheckOutView.swift
//  Cupcake-Corner
//
//  Created by ChamanGurjar on 26/03/20.
//  Copyright © 2020 ChamanGurjar. All rights reserved.
//

import SwiftUI

struct CheckOutView: View {
    
    @ObservedObject var orded: Order
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct CheckOutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckOutView(orded: Order())
    }
    
}
