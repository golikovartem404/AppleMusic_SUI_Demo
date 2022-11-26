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
    var itemAction: () -> ()

    var body: some View {
        Button(action: self.itemAction) {
            HStack {
                Image(systemName: self.icon)
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.red)
                Text(self.title)
                    .font(.system(size: 18, weight: .regular, design: .default))
            }
            .frame(height: 40)
        }
    }
}
