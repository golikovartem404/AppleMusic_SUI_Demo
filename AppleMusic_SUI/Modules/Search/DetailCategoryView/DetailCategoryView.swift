//
//  DetailCategoryView.swift
//  AppleMusic_SUI
//
//  Created by User on 09.12.2022.
//

import SwiftUI

struct DetailCategoryView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            PlaylistsListView()
            TracksListView()
                .navigationBarItems(trailing: Button(action: {
                    print("More options button pressed")
                }, label: {
                    Text(Image(systemName: "ellipsis"))
                        .frame(width: 26, height: 26, alignment: .center)
                        .foregroundColor(.red)
                        .background(
                            Color.white
                                .cornerRadius(13)
                                .shadow(
                                    color: Color.init(UIColor.systemGray3),
                                    radius: 2,
                                    x: 0.5,
                                    y: 0.5
                                ))
                        .font(.system(size: 18))
                }))
                .navigationTitle("The greatest hits")
        }
    }
}

struct DetailCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        DetailCategoryView()
    }
}
