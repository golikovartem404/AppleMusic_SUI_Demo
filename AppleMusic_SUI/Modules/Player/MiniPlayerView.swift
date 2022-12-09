//
//  PlayerView.swift
//  AppleMusic_SUI
//
//  Created by User on 26.11.2022.
//

import SwiftUI

struct MiniPlayerView: View {
    @State private var showingPlayer = false

    var body: some View {
        HStack {
            Image(Constants.Strings.PlayerText.albumImageName)
                .resizable()
                .frame(
                    width: Constants.Frames.playerImageWidth,
                    height: Constants.Frames.playerImageHeight
                )
                .aspectRatio(contentMode: .fit)
                .clipped()
                .cornerRadius(8)
                .padding(.leading, Constants.Paddings.playerImageLeading)

            Text(Constants.Strings.PlayerText.songName)
                .padding(.leading, Constants.Paddings.playerTextLeading)
                .padding(.trailing, Constants.Paddings.playerTextTrailing)

            Spacer()

            HStack {
                Button(action: {}) {
                    Image(systemName: Constants.Strings.PlayerText.playButtonImageName)
                        .padding(.trailing, Constants.Paddings.playButtonTrailing)
                }
                
                Button(action: {}) {
                    Image(systemName: Constants.Strings.PlayerText.forwardButtonImageName)
                        .padding(.trailing, Constants.Paddings.forwardButtonTrailing)
                }
            }
            .foregroundColor(.black)
            .font(.system(size: 25))
        }
        .frame(height: Constants.Frames.playerViewHeight)
        .background(Color.init(.systemGray6).opacity(0.95))
        .offset(y: -49)
        .onTapGesture(count: 2, perform: {
             showingPlayer.toggle()
         })
         .fullScreenCover(isPresented: $showingPlayer, content: PlayerView.init)
    }
}

struct MiniPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        MiniPlayerView()
    }
}
