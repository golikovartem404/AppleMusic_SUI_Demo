//
//  TrackItem.swift
//  AppleMusic_SUI
//
//  Created by User on 09.12.2022.
//

import SwiftUI

struct TrackItem: View {
    var image: String
    var title: String
    var artist: String
    var description: String

    var body: some View {
        VStack(alignment: .leading) {
            Image(self.image)
                .resizable()
                .frame(width: 185, height: 185)
                .scaledToFit()
                .cornerRadius(5)

            Text(self.title)
                .font(.system(size: 13))
                .fontWeight(.bold)
                .lineLimit(2)

            Text(self.artist)
                .font(.system(size: 13))
                .lineLimit(2)
            
            Text(self.description)
                .font(.system(size: 13))
                .lineLimit(2)
                .foregroundColor(.gray)
        }
        .frame(width: 185, height: 235)
    }
}
