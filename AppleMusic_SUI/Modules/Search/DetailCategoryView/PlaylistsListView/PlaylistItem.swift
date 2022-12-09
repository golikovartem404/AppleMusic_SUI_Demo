//
//  PlaylistItem.swift
//  AppleMusic_SUI
//
//  Created by User on 09.12.2022.
//

import SwiftUI

struct PlaylistItem: View {
    var image: String
    var title: String
    var category: String?
    var artist: String?
    var description: String

    var body: some View {
        VStack(alignment: .leading) {
            Text(category ?? "")
                .font(.system(size: 13))
                .foregroundColor(.gray)

            Text(title)
                .font(.system(size: 16))

            Text(description)
                .font(.system(size: 18))
                .foregroundColor(.gray)
            
            Image(image)
                .resizable()
                .clipped()
                .frame(width: 390)
                .scaledToFit()
                .cornerRadius(10)
        }
    }
}
