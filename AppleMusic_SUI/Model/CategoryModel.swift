//
//  CategoryModel.swift
//  AppleMusic_SUI
//
//  Created by User on 09.12.2022.
//

import Foundation

struct CategoryModel: Identifiable {
    let id = UUID()
    var categoryImage: String
    var categoryTitle: String
}

extension CategoryModel {
    static let categories = [
        CategoryModel(categoryImage: "category1", categoryTitle: "The Greatest"),
        CategoryModel(categoryImage: "category2", categoryTitle: "Russian Folk"),
        CategoryModel(categoryImage: "category3", categoryTitle: "Space"),
        CategoryModel(categoryImage: "category4", categoryTitle: "Ambient"),
        CategoryModel(categoryImage: "category5", categoryTitle: "Jazz"),
        CategoryModel(categoryImage: "category6", categoryTitle: "Classical"),
        CategoryModel(categoryImage: "category7", categoryTitle: "Electro"),
        CategoryModel(categoryImage: "category8", categoryTitle: "Vinyl Special"),
        CategoryModel(categoryImage: "category9", categoryTitle: "Flamenco Guitar"),
        CategoryModel(categoryImage: "category10", categoryTitle: "Relax"),
    ]
}
