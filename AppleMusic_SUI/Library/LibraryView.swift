//
//  LibraryView.swift
//  AppleMusic_SUI
//
//  Created by User on 26.11.2022.
//

import SwiftUI

struct LibraryView: View {

    @State var showCommonLibraryView = true

    var body: some View {
        NavigationView {
            if self.showCommonLibraryView {
                CommonLibraryView()
                    .navigationBarItems(trailing:
                                            Button(action: {
                        showCommonLibraryView.toggle()
                    }, label: {
                        Text(Constants.Strings.NavigationLinkText.edit)
                            .foregroundColor(.pink)
                    })
                    )
                    .navigationBarTitle(Constants.Strings.NavigationBarTitles.libraryTitle)
            } else {
                EditListView()
                    .navigationBarItems(trailing:
                                            Button(action: {
                        showCommonLibraryView.toggle()
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
