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
    @State var categories = CategoryModel.categories

    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Image(systemName: "magnifyingglass")
                        .font(.system(size: 20))
                        .foregroundColor(.gray)
                        .padding(.leading, 10)
                    TextField("Your library", text: $searchText)
                }
                .frame(height: 40)
                .background(Color.init(UIColor.systemGray5))
                .cornerRadius(12)
                .padding(.top, 4)
                .padding([.leading, .trailing], 12)

                ScrollView {
                    LazyVGrid(columns: columns) {
                        Section {
                            ForEach(categories, id: \.id) { category in
                                NavigationLink(destination: DetailCategoryView()) {
                                    CategoryItemView(
                                        categoryImage: category.categoryImage,
                                        categoryTitle: category.categoryTitle
                                    )
                                }
                            }
                        } header: {
                            Text("Search by category")
                                .font(.system(size: 23, weight: .black, design: .default))
                                .fontWeight(.bold)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.top, 10)
                        }
                        
                    }
                }
                .padding([.leading, .trailing], 12)
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
