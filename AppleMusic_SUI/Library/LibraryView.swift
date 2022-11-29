//
//  LibraryView.swift
//  AppleMusic_SUI
//
//  Created by User on 26.11.2022.
//

import SwiftUI

struct LibraryView: View {
    @State var editingListIsHidden = true

    var body: some View {
        NavigationView {
            if self.editingListIsHidden {
                CommonLibraryView()
                    .navigationBarItems(trailing: Button(action: {
                        editingListIsHidden.toggle()
                    }, label: {
                        Text(Constants.Strings.NavigationLinkText.edit)
                            .foregroundColor(.pink)
                    })
                    )
                    .navigationBarTitle(Constants.Strings.NavigationBarTitles.libraryTitle)
            } else {
                EditListView()
                    .navigationBarItems(trailing: Button(action: {
                        editingListIsHidden.toggle()
                    }, label: {
                        Text(Constants.Strings.NavigationLinkText.done)
                            .foregroundColor(.pink)
                    })
                    )
                    .navigationBarTitle(Constants.Strings.NavigationBarTitles.libraryTitle)
                    .navigationBarBackButtonHidden(true)
            }
        }
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
