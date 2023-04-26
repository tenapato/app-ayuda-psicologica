//
//  SearchBar.swift
//  psychology-app
//
//  Created by Patricio Tena on 25/04/23.
//

import SwiftUI

struct SearchBar: View {
    @Binding var searchText: String // Pass binding from ContentView
    var body: some View {
        TextField("Buscar", text: $searchText)
            .padding(7)
            .padding(.horizontal, 25)
            .background(Color(.systemGray6))
            .padding(20)
            .cornerRadius(8)
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(searchText: .constant(""))
    }
}
