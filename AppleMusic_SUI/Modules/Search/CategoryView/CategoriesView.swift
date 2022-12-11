//
//  CategoriesView.swift
//  AppleMusic_SUI
//
//  Created by User on 11.12.2022.
//

import SwiftUI

struct CategoriesView: View {
    @State var categories = CategoryModel.categories

    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {
        ScrollView(showsIndicators: false) {
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
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
