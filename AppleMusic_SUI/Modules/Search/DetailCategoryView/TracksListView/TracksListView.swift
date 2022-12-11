//
//  TracksListView.swift
//  AppleMusic_SUI
//
//  Created by User on 09.12.2022.
//

import SwiftUI

struct TracksListView: View {
    @State var items = MusicComposition.allMusic

    let rows: [GridItem] = [
        GridItem(.fixed(Constants.Frames.trackItemSize))
    ]

    var body: some View {
        VStack {
            Text(Constants.Strings.DetailCategoryViewText.trackListTitle)
                .font(.system(
                    size: Constants.FontSize.trackListText,
                    weight: .bold,
                    design: .default)
                )
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, Constants.Paddings.searchViewMainPadding)

            ScrollView(.horizontal, showsIndicators: false)  {
                LazyHGrid(rows: rows) {
                    ForEach(items.filter( {$0.type == .track} ), id: \.id) { item in
                        TrackItem(
                            image: item.image,
                            title: item.title,
                            artist: item.artist ?? "",
                            description: item.description
                        )
                    }
                }
                .padding([.leading, .trailing], Constants.Paddings.searchViewMainPadding)
            }
        }
        .frame(height: Constants.Frames.trackListHeight)
    }
}

struct TracksListView_Previews: PreviewProvider {
    static var previews: some View {
        TracksListView()
    }
}
