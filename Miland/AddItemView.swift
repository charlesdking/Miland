//
//  AddItemView.swift
//  Miland
//
//  Created by Charles King on 1/4/26.
//

import SwiftUI


struct AddItemView: View {
    @Binding var items: [GroceryItem]
    @State private var name = ""
    
    var body: some View {
        VStack {
            TextField("Item name", text: $name)
            Button("Add") {
                items.append(GroceryItem(id: UUID(), name: name))
            }
        }
        .padding()
    }
}
