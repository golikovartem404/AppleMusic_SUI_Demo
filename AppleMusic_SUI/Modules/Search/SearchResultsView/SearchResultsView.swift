//
//  SearchResultsView.swift
//  AppleMusic_SUI
//
//  Created by User on 11.12.2022.
//

import SwiftUI

struct SearchResultsView: View {
    @ObservedObject var model: MusicCompositionsPublicModel
    @Binding var searchText: String
    @State private var selected = 0

    var body: some View {
        Picker(selection: $selected, label: Text("")) {
            Text(Constants.Strings.PickerMode.appleMusicLibrary).tag(0)
            Text(Constants.Strings.PickerMode.myLibrary).tag(1)
        }
        .pickerStyle(SegmentedPickerStyle())
        .padding([.leading, .trailing], Constants.Paddings.searchViewMainPadding)

        if selected == 0 {
            AppleMusicLibraryView(model: model, searchText: searchText)
        } else {
            MyLibraryView()
        }
    }
}
