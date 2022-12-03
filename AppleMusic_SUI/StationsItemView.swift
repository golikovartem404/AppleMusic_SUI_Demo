//
//  StationsItemView.swift
//  AppleMusic_SUI
//
//  Created by User on 03.12.2022.
//

import SwiftUI

struct StationsItem: View {
    var image: String
    var title: String
    var description: String

    var body: some View {
        HStack {
            Image(self.image)
                .resizable()
                .frame(width: 100, height: 100)
                .scaledToFill()
                .cornerRadius(5)

            VStack(alignment: .leading) {
                Text(self.title)
                    .font(.system(size: 20, weight: .bold))

                Text(self.description)
                    .font(.system(size: 20))
                    .foregroundColor(.gray)
            }
            .padding(.leading, 12)

            Spacer()
        }
    }
}
