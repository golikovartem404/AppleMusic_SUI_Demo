//
//  SearchDataModel.swift
//  AppleMusic_SUI
//
//  Created by User on 11.12.2022.
//

import Foundation

enum MusicCompositionType {
    case playlist
    case track
}

struct MusicComposition: Identifiable {
    let id = UUID()
    let image: String
    let title: String
    var category: String? = nil
    var artist: String? = nil
    let description: String
    let type: MusicCompositionType
}

extension MusicComposition {
    static let allMusic = [
        MusicComposition(image: "playlist-1", title: "Music For Coding", category: "Favorite Playlist", description: "Apple Music", type: .playlist),
        MusicComposition(image: "playlist-2", title: "Relaxing Jazz", category: "Favorite Playlist", description: "Apple Music", type: .playlist),
        MusicComposition(image: "playlist-3", title: "Live", category: "Favorite Playlist", description: "Apple Music", type: .playlist),
        MusicComposition(image: "playlist-4", title: "Classic Rock", category: "Favorite Playlist", description: "Apple Music", type: .playlist),
        MusicComposition(image: "track-1", title: "Monkinbird", artist: "Eminem", description: "The Eminem Show", type: .track),
        MusicComposition(image: "albumLogo", title: "Radioactive", artist: "Imagine Dragons", description: "The Transition of Mali", type: .track),
        MusicComposition(image: "track-2", title: "I Got Love", artist: "Miyagi & Panda", description: "Russian Hit", type: .track),
        MusicComposition(image: "track-3", title: "Flo-Rida", artist: "Whistle", description: "Songs Under Cover", type: .track),
        MusicComposition(image: "track-4", title: "LMFAO", artist: "Party Rock Anthem", description: "Deceptive Bends", type: .track),
        MusicComposition(image: "track-5", title: "Obsession", artist: "USO", description: "Obsession", type: .track)
    ]
}
