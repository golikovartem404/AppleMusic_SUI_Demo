//
//  FavouritesView.swift
//  AppleMusic_SUI
//
//  Created by User on 03.12.2022.
//

import SwiftUI

struct FavouritesView: View {
    @State var items = RadioModel.favoritesStations

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
             .padding(.horizontal, Constants.Paddings.favoriteItemHorizontal)
             .padding(.bottom, Constants.Paddings.favoriteItemBottom)
         }
         
         Divider()
     }
}

struct FavouritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavouritesView()
    }
}
