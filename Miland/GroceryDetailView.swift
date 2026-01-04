//
//  GroceryDetailView.swift
//  Miland
//
//  Created by Charles King on 1/4/26.
//

import SwiftUI


struct GroceryDetailView: View {
    let item: GroceryItem

    var body: some View {
        Text(item.name)
            .font(.largeTitle)
            .navigationTitle("Details")
    }
}
