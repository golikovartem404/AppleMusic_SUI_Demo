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
    @State var model = MusicCompositionsPublicModel()

    var body: some View {
        NavigationView {
            VStack {
                SearchBarView(searchText: $searchText, isSearching: $isSearching)
                if !isSearching {
                    CategoryListView()
                        .navigationBarHidden(false)
                } else {
                    SearchResultsView(model: model, searchText: $searchText)
                        .navigationBarHidden(true)
                }
            }
            .navigationTitle(Constants.Strings.NavigationBarTitles.searchTitle)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
