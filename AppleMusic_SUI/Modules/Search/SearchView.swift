//
//  SearchView.swift
//  AppleMusic_SUI
//
//  Created by User on 09.12.2022.
//

import SwiftUI

struct SearchView: View {
    @State private var isSearching = false
    @State private var searchText = ""

    var body: some View {
        NavigationView {
            VStack {
                SearchBarView(searchText: $searchText, isSearching: $isSearching)
                if !isSearching {
                    CategoriesView()
                }
            }
            .navigationTitle("Search")
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
