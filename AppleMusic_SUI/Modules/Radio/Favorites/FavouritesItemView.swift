//
//  FavouritesItemView.swift
//  AppleMusic_SUI
//
//  Created by User on 03.12.2022.
//

import SwiftUI

struct FavoritesItem: View {
    var image: String
    var title: String
    var category: String? = nil

    var body: some View {
        VStack(alignment: .leading) {
            Text(category ?? "")
                .font(.system(size: Constants.FontSize.radioStationItemSubtitle))
                .foregroundColor(.gray)

            Text(title)
                .font(.system(size: Constants.FontSize.radioStationItemTitle, weight: .bold))
            
            Image(image)
                .resizable()
                .scaledToFill()
                .clipped()
                .frame(width: Constants.Frames.favoriteItemImageWidth)
                .cornerRadius(10)
        }
        .frame(height: Constants.Frames.favoriteItemVStackHeight)
    }
}
