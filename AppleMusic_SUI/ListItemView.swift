//
//  ListItemView.swift
//  AppleMusic_SUI
//
//  Created by User on 26.11.2022.
//

import SwiftUI

struct ListItemView: View {

    var title: String
    var icon: String
    var isSelected: Bool

    var body: some View {
        Button(action: {}) {
            HStack {
                Image(systemName: self.icon)
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.red)
                Text(self.title)
                    .font(.system(size: 24, weight: .regular, design: .default))
            }
            .frame(height: 50)
        }
    }
}

//struct ListItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        ListItemView()
//    }
//}
