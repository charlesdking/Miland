//
//  GroceryDetailView.swift
//  Miland
//
//  Created by Charles King on 1/4/26.
//

import SwiftUI


struct GroceryDetailView: View {
    @Binding var item: GroceryItem

    var body: some View {
        Form {
            TextField("Item name", text: $item.name)
        }
        .navigationTitle("Edit Item")
    }
}
