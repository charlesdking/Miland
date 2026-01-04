//
//  GroceryListView.swift
//  Miland
//
//  Created by Charles King on 1/3/26.
//

import SwiftUI


struct GroceryListView: View {
    @State private var items: [GroceryItem] = [
        GroceryItem(id: UUID(), name: "Eggs"),
        GroceryItem(id: UUID(), name: "Chicken"),
        GroceryItem(id: UUID(), name: "Broccoli")
    ]

    var body: some View {
        NavigationStack {
            List(items) { item in
                Text(item.name)
            }
            .navigationTitle("Groceries")
        }
    }
}

#Preview {
    GroceryListView()
}
