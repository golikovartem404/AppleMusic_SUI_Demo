//
//  StationsVIew.swift
//  AppleMusic_SUI
//
//  Created by User on 03.12.2022.
//

import SwiftUI

struct StationsView: View {
    @State var items = RadioModel.stations

     let columns: [GridItem] = [
         GridItem(.flexible(), spacing: 5)
     ]

    var body: some View {
        ScrollView(.vertical) {
            LazyVGrid(columns: columns) {
                Section {
                    ForEach(items, id: \.id) { item in
                         StationsItem(
                            image: item.image,
                            title: item.title,
                            description: item.description ?? ""
                         )

                         Divider()
                     }
                } header: {
                    Text(Constants.Strings.SectionHeaders.stationsHeader)
                        .font(.system(
                            size: Constants.FontSize.stationsSectionHeader,
                            weight: .bold,
                            design: .default)
                        )
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
            }
            .padding(.leading, Constants.Paddings.stationsLazyVGridLeading)
            .padding(.trailing, Constants.Paddings.stationsLazyVGridTrailing)
        }
    }
}

struct StationsView_Previews: PreviewProvider {
    static var previews: some View {
        StationsView()
    }
}
