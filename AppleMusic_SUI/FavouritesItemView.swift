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
                .font(.system(size: 20))
                .foregroundColor(.gray)

            Text(title)
                .font(.system(size: 20, weight: .bold))
            
            Image(image)
                .resizable()
                .scaledToFit()
                .cornerRadius(10)
        }
    }
}
