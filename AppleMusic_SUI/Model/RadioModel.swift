//
//  RadioModel.swift
//  AppleMusic_SUI
//
//  Created by User on 03.12.2022.
//

import Foundation

struct RadioModel: Identifiable {
    let id = UUID()
    var image: String
    var title: String
    var category: String? = nil
    var description: String? = nil
}

extension RadioModel {

    static let favoritesData = [
        RadioModel(image: "nrj", title: "EnergyFM", category: "New Episode"),
        RadioModel(image: "russianRadio", title: "Russian Radio", category: "Favorite Station"),
        RadioModel(image: "retroFM", title: "Retro FM", category: "Favorite Station"),
        RadioModel(image: "europaPlus", title: "Europa Plus", category: "New Episode")
    ]

    static let stationsData = [
        RadioModel(image: "monte-carlo", title: "Monte-Carlo", description: "Set yourself up for rich"),
        RadioModel(image: "russianHit", title: "Russian Hit", description: "Listening now"),
        RadioModel(image: "freedom", title: "Freedom FM Radio", description: "Music for free thinking"),
        RadioModel(image: "relaxFM", title: "Relax FM", description: "Music for relax"),
        RadioModel(image: "retroFM", title: "Retro FM", description: "The best hits"),
        RadioModel(image: "russianRadio", title: "Russian Radio", description: "Only russian music")
    ]
}
