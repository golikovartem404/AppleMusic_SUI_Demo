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
        GridItem(.fixed(240))
    ]

    var body: some View {
        VStack {
            Text("Mood is relax")
                .font(.system(size: 20, weight: .bold, design: .default))
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 12)

            ScrollView(.horizontal, showsIndicators: false)  {
                LazyHGrid(rows: rows) {
                    ForEach(items.filter( {$0.type == .track} ), id: \.id) { item in
                        TrackItem(image: item.image, title: item.title, artist: item.artist ?? "", description: item.description)
                    }
                }
                .padding(.trailing, 12)
                .padding(.leading, 12)
            }
        }
        .frame(height: 270)
    }
}

struct TracksListView_Previews: PreviewProvider {
    static var previews: some View {
        TracksListView()
    }
}
