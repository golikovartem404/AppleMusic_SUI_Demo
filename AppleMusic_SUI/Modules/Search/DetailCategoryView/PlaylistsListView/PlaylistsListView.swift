//
//  PlaylistsList.swift
//  AppleMusic_SUI
//
//  Created by User on 09.12.2022.
//

import SwiftUI

struct PlaylistsListView: View {
    @State var items = MusicComposition.allMusic

    let rows: [GridItem] = [
        GridItem(.fixed(330))
    ]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            Divider()

            LazyHGrid(rows: rows) {
                ForEach(items.filter( {$0.type == .playlist} ), id: \.id) { playlist in
                    PlaylistItem(
                        image: playlist.image,
                        title: playlist.title,
                        category: playlist.category,
                        artist: playlist.artist,
                        description: playlist.description
                    )
                }
            }
            .padding([.leading, .trailing], 12)
            .padding(.bottom, 10)

            Divider()
        }
        .frame(height: 365)
    }
}

struct PlaylistsList_Previews: PreviewProvider {
    static var previews: some View {
        PlaylistsListView()
    }
}
