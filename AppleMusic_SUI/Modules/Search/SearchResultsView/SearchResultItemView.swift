//
//  SearchResultItemView.swift
//  AppleMusic_SUI
//
//  Created by User on 11.12.2022.
//

import SwiftUI

struct SearchResultItemView: View {
    var image: String = ""
    var title: String = ""
    var description: String = ""
    var type: MusicCompositionType

    var body: some View {
        HStack(alignment: .center) {
            Image(self.image)
                .resizable()
                .frame(width: 45, height: 45)
                .scaledToFit()
                .cornerRadius(5)

            VStack(alignment: .leading) {
                Spacer()

                Text(self.title)
                    .font(.system(size: 14))

                Text("\((type == .playlist ? "Плейлист –" : "Песня –") + self.description)")
                    .font(.system(size: 14))
                    .foregroundColor(.gray)

                Spacer()
                Divider()
            }
            .padding(.leading, 12)

            Spacer()

            Button {} label: {
                Text(Image(systemName: (type == .playlist) ? "chevron.right" : "ellipsis"))
                    .frame(width: 20, height: 20, alignment: .center)
                    .font(.system(size: 14))
            }
        }
        .frame(height: 60)
    }
}
