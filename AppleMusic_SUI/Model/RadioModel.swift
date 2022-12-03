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
        RadioModel(image: "nrj", title: "EnergyFM", category: "Новый выпуск"),
        RadioModel(image: "russianRadio", title: "Русское радио", category: "Избранная радиостанция"),
        RadioModel(image: "retroFM", title: "Ретро FM", category: "Избранная радиостанция"),
        RadioModel(image: "europaPlus", title: "Europa Plus", category: "Новый выпуск")
    ]

    static let stationsData = [
        RadioModel(image: "monte-carlo", title: "Monte-Carlo", description: "Настройся на богатые мысли"),
        RadioModel(image: "russianHit", title: "Русский Хит", description: "Слушают сейчас"),
        RadioModel(image: "freedom", title: "Радио Свобода FM", description: "Музыка для свободного мышления"),
        RadioModel(image: "relaxFM", title: "Relax FM", description: "Музыка для расслабления")
    ]
}
