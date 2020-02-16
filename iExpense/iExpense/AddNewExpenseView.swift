//
//  AddNewExpense.swift
//  iExpense
//
//  Created by ChamanGurjar on 15/02/20.
//  Copyright © 2020 ChamanGurjar. All rights reserved.
//

import SwiftUI

struct AddNewExpenseView: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var expenses: Expenses
    
    @State private var name = ""
    @State private var type = "Personal"
    @State private var amount = ""
    
    static let types = ["Business", "Personal"]
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Name", text: $name)
                Picker("Type", selection: $type) {
                    ForEach(Self.types, id: \.self) {
                        Text($0)
                    }
                }
                TextField("Amount", text: $amount)
            }
            .navigationBarTitle("Add New Expense")
            .navigationBarItems(trailing: Button("Save") {
                if let finalAmount = Int(self.amount) {
                    let item = ExpenseItem(name: self.name, type: self.type, amount: finalAmount)
                    self.expenses.items.append(item)
                    self.presentationMode.wrappedValue.dismiss()
                }
            })
        }
    }
}

struct AddNewExpense_Previews: PreviewProvider {
    static var previews: some View {
        AddNewExpenseView(expenses: Expenses())
    }
}
