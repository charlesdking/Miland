//
//  ContentView.swift
//  Nents
//
//  Created by Charles King on 12/21/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
    // MARK: Simple List
    // Uncomment to show a simple list example

    let items = ["Eggs", "Chicken", "Broccoli", "Potatoes"]
        
        VStack(alignment: .leading) {
        Text("Simple List")
            .font(.headline)
        ForEach(items, id: \.self) { item in
            Text(item)
            }
        }.padding()
    }
}

#Preview {
    ContentView()
}
