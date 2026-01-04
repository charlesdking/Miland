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

    @State private var showAddItem = false
    
    var body: some View {
        NavigationStack {
            List(items) { item in
                NavigationLink {
                    GroceryDetailView(item: item)
                } label: {
                    GroceryRow(item: item)
                }
            }
            .navigationTitle("Groceries")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        showAddItem = true
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
            .sheet(isPresented: $showAddItem) {
                AddItemView(items: $items)
            }
        }
    }
}

#Preview {
    GroceryListView()
}
