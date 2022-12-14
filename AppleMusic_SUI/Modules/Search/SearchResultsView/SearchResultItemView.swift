//
//  SearchResultItemView.swift
//  AppleMusic_SUI
//
//  Created by User on 11.12.2022.
//

import SwiftUI

struct SearchResultItemView: View {
    var image: String = ""
    var title: String = ""
    var description: String = ""
    var type: MusicCompositionType

    var body: some View {
        HStack(alignment: .center) {
            Image(self.image)
                .resizable()
                .frame(
                    width: Constants.Frames.searchResultItemImageWidthHeight,
                    height: Constants.Frames.searchResultItemImageWidthHeight
                )
                .scaledToFit()
                .cornerRadius(5)

            VStack(alignment: .leading) {
                Spacer()

                Text(self.title)
                    .font(.system(size: Constants.FontSize.searchResultItemTextFontSize))

                Text("\((type == .playlist ? Constants.Strings.CellsText.playlist : Constants.Strings.CellsText.track) + self.description)")
                    .font(.system(size: Constants.FontSize.searchResultItemTextFontSize))
                    .foregroundColor(.gray)

                Spacer()
                Divider()
            }
            .padding(.leading, Constants.Paddings.searchViewMainPadding)

            Spacer()

            Button {} label: {
                Text(Image(systemName: (type == .playlist) ? "chevron.right" : "ellipsis"))
                    .frame(
                        width: Constants.Frames.searchResultItemButtonHeightWidth,
                        height: Constants.Frames.searchResultItemButtonHeightWidth,
                        alignment: .center
                    )
                    .font(.system(size: Constants.FontSize.searchResultItemTextFontSize))
            }
        }
        .frame(height: Constants.Frames.searchResultItemHStackHeight)
    }
}
