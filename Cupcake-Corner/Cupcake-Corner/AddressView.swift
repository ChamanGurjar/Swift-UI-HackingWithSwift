//
//  AddressView.swift
//  Cupcake-Corner
//
//  Created by ChamanGurjar on 26/03/20.
//  Copyright © 2020 ChamanGurjar. All rights reserved.
//

import SwiftUI

struct AddressView: View {
    
    @ObservedObject var order = Order()
    
    
    var body: some View {
        Form {
            Section {
                TextField("Name", text: $order.name)
                TextField("Street Address",  text: $order.streetAddress)
                TextField("City", text: $order.city)
                TextField("Zip", text: $order.zip)
            }
            
            Section {
                NavigationLink(destination: CheckOutView(orded: order)) {
                    Text("Check Out")
                }
            }
            .disabled(order.hasValidAddress == false)
        }
        .navigationBarTitle("Delievery Details", displayMode: .inline)
    }
}

struct AddressView_Previews: PreviewProvider {
    static var previews: some View {
        AddressView(order: Order())
    }
}
