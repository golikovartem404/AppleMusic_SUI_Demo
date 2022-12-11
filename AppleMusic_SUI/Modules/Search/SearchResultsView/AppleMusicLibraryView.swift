//
//  AppleMusicLibraryView.swift
//  AppleMusic_SUI
//
//  Created by User on 11.12.2022.
//

import SwiftUI

struct AppleMusicLibraryView: View {
    var model: MusicCompositionsPublicModel
    var searchText: String

    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 12)
    ]

    var body: some View {
        ScrollView(showsIndicators: false)  {
            LazyVGrid(
                columns: columns,
                content: {
                    if searchText.isEmpty {
                        ForEach(model.data, id: \.id) { item in
                            SearchResultItemView(image: item.image, title: item.title, description: item.description, type: item.type)
                        }
                    } else {
                        ForEach(model.data.filter({ "\($0.title)".contains(searchText) && $0.type == .playlist }), id: \.id) { item in
                            SearchResultItemView(image: item.image, title: item.title, description: item.description, type: item.type)
                        }
                        ForEach(model.data.filter({ "\($0.title)".contains(searchText) && $0.type == .track }), id: \.id) { item in
                            SearchResultItemView(image: item.image, title: item.title, description: item.description, type: item.type)
                        }
                    }
                })
                .padding(.leading, 12)
                .padding(.trailing, 12)
        }
        .padding(.top, 12)
        Spacer()
    }
}

