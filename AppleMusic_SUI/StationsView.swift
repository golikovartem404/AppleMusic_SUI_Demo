//
//  StationsVIew.swift
//  AppleMusic_SUI
//
//  Created by User on 03.12.2022.
//

import SwiftUI

struct StationsView: View {
    @State var items = RadioModel.stationsData

     let columns: [GridItem] = [
         GridItem(.flexible(), spacing: 5)
     ]

    var body: some View {
        ScrollView(.vertical) {
            LazyVGrid(columns: columns) {
                Section {
                    ForEach(items, id: \.id) { item in
                         StationsItem(image: item.image, title: item.title, description: item.description ?? "")
                         Divider()
                     }
                } header: {
                    Text("Stations")
                        .font(.system(size: 24, weight: .bold, design: .default))
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
            }
            .padding(.leading, 16)
            .padding(.trailing, 16)
        }
    }
}

struct StationsView_Previews: PreviewProvider {
    static var previews: some View {
        StationsView()
    }
}
