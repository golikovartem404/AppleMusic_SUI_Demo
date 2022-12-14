//
//  MusicCompositionsPublicModel.swift
//  AppleMusic_SUI
//
//  Created by User on 11.12.2022.
//

import SwiftUI

class MusicCompositionsPublicModel: ObservableObject {
    @Published var data = MusicComposition.allMusic
}
