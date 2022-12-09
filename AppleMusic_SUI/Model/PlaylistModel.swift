//
//  PlaylistsListModel.swift
//  AppleMusic_SUI
//
//  Created by User on 09.12.2022.
//

import Foundation

struct Playlist: Identifiable {
    let id = UUID()
    var image: String
    var title: String
    var category: String? = nil
    var artist: String? = nil
    var description: String
}

extension Playlist {
    static let playlistsData = [
        Playlist(image: "playlist-1", title: "Music For Coding", category: "Favorite Playlist", description: "Apple Music"),
        Playlist(image: "playlist-2", title: "Relaxing Jazz", category: "Favorite Playlist", description: "Apple Music"),
        Playlist(image: "playlist-3", title: "Live", category: "Favorite Playlist", description: "Apple Music"),
        Playlist(image: "playlist-4", title: "Classic Rock", category: "Favorite Playlist", description: "Apple Music")
    ]
}
