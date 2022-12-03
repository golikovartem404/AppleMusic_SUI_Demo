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
         GridItem(.flexible())
     ]

     var body: some View {
         Divider()
         ScrollView(.horizontal, showsIndicators: false) {
             LazyHGrid(rows: rows) {
                 ForEach(items, id: \.id) { item in
                     FavoritesItem(
                        image: item.image,
                        title: item.title,
                        category: item.category
                     )
                 }
             }
             .padding(.horizontal, 16)
             .padding(.bottom, 16)
         }
         Divider()
     }
}

struct FavouritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavouritesView()
    }
}
