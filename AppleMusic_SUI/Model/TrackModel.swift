//
//  TrackListModel.swift
//  AppleMusic_SUI
//
//  Created by User on 09.12.2022.
//

import Foundation

struct Track: Identifiable {
    let id = UUID()
    var image: String
    var title: String
    var category: String? = nil
    var artist: String? = nil
    var description: String
}

extension Track {
    static let tracksList = [
        Track(image: "track-1", title: "Monkinbird", artist: "Eminem", description: "The Eminem Show"),
        Track(image: "albumLogo", title: "Radioactive", artist: "Imagine Dragons", description: "The Transition of Mali"),
        Track(image: "track-2", title: "I Got Love", artist: "Miyagi & Panda", description: "Russian Hit"),
        Track(image: "track-3", title: "Flo-Rida", artist: "Whistle", description: "Songs Under Cover"),
        Track(image: "track-4", title: "LMFAO", artist: "Party Rock Anthem", description: "Deceptive Bends"),
        Track(image: "track-5", title: "Obsession", artist: "USO", description: "Obsession")
    ]
}
