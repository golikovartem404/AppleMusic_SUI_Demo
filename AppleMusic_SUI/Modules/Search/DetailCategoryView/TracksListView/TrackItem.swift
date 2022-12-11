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
                .frame(width: Constants.Frames.trackItemImage, height: Constants.Frames.trackItemImage)
                .scaledToFit()
                .cornerRadius(5)
            
            Text(self.title)
                .font(.system(size: Constants.FontSize.trackItemText))
                .fontWeight(.bold)
                .lineLimit(2)
            
            Text(self.artist)
                .font(.system(size: Constants.FontSize.trackItemText))
                .lineLimit(2)
            
            Text(self.description)
                .font(.system(size: Constants.FontSize.trackItemText))
                .lineLimit(2)
                .foregroundColor(.gray)
        }
        .frame(width: Constants.Frames.trackItemImage, height: Constants.Frames.trackItemHeight)
    }
}
