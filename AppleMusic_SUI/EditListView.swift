//
//  EditListView.swift
//  AppleMusic_SUI
//
//  Created by User on 26.11.2022.
//

import SwiftUI

struct EditListView: View {

    @State var listData = Model.data
    @State var selectionItems: [String] = []

    var body: some View {
        List {
            ForEach(listData, id: \.title) { item in
                ListItemView(title: item.title, icon: item.icon, isSelected: selectionItems.contains(item.title)) {
                    if self.selectionItems.contains(item.title) {
                        self.selectionItems.removeAll(where: { item.title == $0 })
                    } else {
                        self.selectionItems.append(item.title)
                    }
                }
            }
        }
        .accentColor(.red)
    }
}

struct EditListView_Previews: PreviewProvider {
    static var previews: some View {
        EditListView()
    }
}
