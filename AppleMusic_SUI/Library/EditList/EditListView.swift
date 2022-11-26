//
//  EditListView.swift
//  AppleMusic_SUI
//
//  Created by User on 26.11.2022.
//

import SwiftUI

struct EditListView: View {

    @State var isEditMode = EditMode.active
    @State var listData = Model.data
    @State var selectionItems: [String] = []
    @State var someItemSelection = Set<UUID>()

    var body: some View {
        List(selection: $someItemSelection) {
            ForEach(listData, id: \.itemID) { item in
                ListItemView(title: item.title, icon: item.icon, isSelected: selectionItems.contains(item.title)) {
                    if self.selectionItems.contains(item.title) {
                        self.selectionItems.removeAll(where: { item.title == $0 })
                    } else {
                        self.selectionItems.append(item.title)
                    }
                }
            }
            .onMove(perform: moveItem)
        }
        .environment(\.editMode, $isEditMode)
        .listStyle(PlainListStyle())
    }

    func moveItem(from sourcePosition: IndexSet, to destinationPosition: Int) {
         self.listData.move(
            fromOffsets: sourcePosition,
            toOffset: destinationPosition
         )
     }
}

struct EditListView_Previews: PreviewProvider {
    static var previews: some View {
        EditListView()
    }
}
