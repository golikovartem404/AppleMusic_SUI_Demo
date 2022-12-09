//
//  TabBarView.swift
//  AppleMusic_SUI
//
//  Created by User on 26.11.2022.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView {
                LibraryView()
                    .tabItem {
                        Image(systemName: Constants.Strings.TabBarTabs.libraryTabImageName)
                        Text(Constants.Strings.TabBarTabs.libraryTabTitle)
                    }

                RadioView()
                .tabItem {
                    Image(systemName: Constants.Strings.TabBarTabs.radioTabImageName)
                    Text(Constants.Strings.TabBarTabs.radioTabTitle)
                }

                NavigationView {
                    Text(Constants.Strings.TabBarTabs.searchTabTitle)
                        .navigationTitle(Constants.Strings.NavigationBarTitles.searchTitle)
                }
                .tabItem {
                    Image(systemName: Constants.Strings.TabBarTabs.searchTabImageName)
                    Text(Constants.Strings.TabBarTabs.searchTabTitle)
                }
            }
            .accentColor(.red)
            
            MiniPlayerView()
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
