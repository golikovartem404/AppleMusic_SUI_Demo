//
//  FavouritesView.swift
//  AppleMusic_SUI
//
//  Created by User on 03.12.2022.
//

import SwiftUI

struct FavouritesView: View {
    @State var items = RadioModel.favoritesData

     let rows: [GridItem] = [
         GridItem(.fixed(275))
     ]

     var body: some View {
         ScrollView(.horizontal, showsIndicators: false) {
             Divider()
             LazyHGrid(rows: rows) {
                 ForEach(items, id: \.id) { item in
                     FavoritesItem(
                        image: item.image,
                        title: item.title,
                        category: item.category
                     )
                 }
             }
             .padding(.leading, 16)
             .padding(.bottom, 16)
             Divider()
         }
     }
}

struct FavouritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavouritesView()
    }
}
