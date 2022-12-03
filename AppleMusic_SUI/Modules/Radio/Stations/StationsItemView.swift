//
//  StationsItemView.swift
//  AppleMusic_SUI
//
//  Created by User on 03.12.2022.
//

import SwiftUI

struct StationsItem: View {
    var image: String
    var title: String
    var description: String

    var body: some View {
        HStack {
            Image(image)
                .resizable()
                .frame(
                    width: Constants.Frames.stationItemImageWidth,
                    height: Constants.Frames.stationItemImageHeight
                )
                .scaledToFill()
                .cornerRadius(5)

            VStack(alignment: .leading) {
                Text(title)
                    .font(.title2)

                Text(description)
                    .font(.system(size: Constants.FontSize.radioStationItemSubtitle))
                    .foregroundColor(.gray)
            }
            .padding(.leading, Constants.Paddings.stationItemVStackLeading)

            Spacer()
        }
    }
}
