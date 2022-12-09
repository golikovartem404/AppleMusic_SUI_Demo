//
//  CategoryItemView.swift
//  AppleMusic_SUI
//
//  Created by User on 09.12.2022.
//

import SwiftUI

struct CategoryItemView: View {
    var categoryImage: String
    var categoryTitle: String

    var body: some View {
        ZStack(alignment: .leading) {
            Image(categoryImage)
                .resizable()
                .frame(maxWidth: 200, maxHeight: 140)
                .scaledToFit()
                .cornerRadius(8)

            Text(categoryTitle)
                .frame(maxWidth: 150, maxHeight: 110, alignment: .bottomLeading)
                .offset(x: 15)
                .font(.system(size: 17, weight: .black))
                .foregroundColor(.white)
        }
    }
}
