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
                    .tabItem { Image(systemName: "music.note.house.fill")
                        Text("Library")
                    }
                NavigationView {
                    Text("Radio")
                        .navigationTitle("Radio")
                }
                .tabItem { Image(systemName: "antenna.radiowaves.left.and.right")
                    Text("Radio")
                }
                NavigationView {
                    Text("Search")
                        .navigationTitle("Search")
                }
                .tabItem { Image(systemName: "magnifyingglass")
                    Text("Search")
                }
            }
            .accentColor(.red)
            PlayerView()
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
