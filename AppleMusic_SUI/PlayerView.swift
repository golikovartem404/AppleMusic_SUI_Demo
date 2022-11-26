//
//  PlayerView.swift
//  AppleMusic_SUI
//
//  Created by User on 26.11.2022.
//

import SwiftUI

struct PlayerView: View {
    var body: some View {
        HStack {
            Image("albumLogo")
                .resizable()
                .frame(width: 50, height: 50)
                .aspectRatio(contentMode: .fit)
                .clipped()
                .cornerRadius(8)
                .padding(.leading, 20)
            Text("Imagine Dragons - Radioactive")
                .padding(.leading, 5)
                .padding(.trailing, 15)
            Spacer()
            HStack {
                Button(action: {}) {
                    Image(systemName: "play.fill")
                        .padding(.trailing, 10)
                }
                Button(action: {}) {
                    Image(systemName: "forward.fill")
                        .padding(.trailing, 20)
                }
            }
            .foregroundColor(.black)
        }
        .frame(height: 80)
        .background(Color.init(.systemGray6))
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}
