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
                .font(.system(size: Constants.FontSize.playlicatCategoryText))
                .foregroundColor(.gray)
            
            Text(title)
                .font(.system(size: Constants.FontSize.playlicatTitleText))
            
            Text(description)
                .font(.system(size: Constants.FontSize.playlicatDescriptionText))
                .foregroundColor(.gray)
            
            Image(image)
                .resizable()
                .clipped()
                .frame(width: Constants.Frames.playlistImageWidth)
                .scaledToFit()
                .cornerRadius(10)
        }
    }
}
