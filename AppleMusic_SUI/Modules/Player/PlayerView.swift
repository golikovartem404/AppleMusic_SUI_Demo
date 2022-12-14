//
//  PlayerView.swift
//  AppleMusic_SUI
//
//  Created by User on 09.12.2022.
//

import SwiftUI

struct PlayerView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var volumeLevel: Double = 0.5
    @State private var currentTime: Double = 0.0
    var totalTime: Double = 4.5 * 60.0

    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [
                    Color(red: 131/255, green: 124/255, blue: 121/255),
                    Color(red: 161/255, green: 148/255, blue: 98/255)
                ]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()

            VStack {
                Image("albumLogo")
                    .resizable()
                    .frame(
                        maxWidth: UIScreen.main.bounds.size.width - (UIScreen.main.bounds.size.width / 3),
                        maxHeight: UIScreen.main.bounds.size.width - (UIScreen.main.bounds.size.width / 3)
                    )
                    .scaledToFit()
                    .cornerRadius(10)
                    .shadow(color: .black, radius: 6, x: 0, y: 0)
                    .padding(.top, UIScreen.main.bounds.size.height / 20)
                    .padding(.bottom, 30)
                    .onTapGesture(count: 2) {
                        presentationMode.wrappedValue.dismiss()
                    }

                ZStack {
                    VStack(alignment: .leading) {
                        Text(Constants.Strings.PlayerText.songName)
                            .font(.system(size: Constants.FontSize.playerTrackText, weight: .bold))
                            .foregroundColor(.white)
                            .lineLimit(1)
                            .opacity(Constants.Opacity.playerElementsOpacity)

                        Text(Constants.Strings.PlayerText.artistName)
                            .font(.system(size: Constants.FontSize.playerTrackText, weight: .bold))
                            .foregroundColor(Color(red: 188/255, green: 173/255, blue: 116/255))
                            .opacity(Constants.Opacity.playerElementsOpacity)
                    }
                    .frame(
                        maxWidth: UIScreen.main.bounds.size.width,
                        alignment: .leading
                    )
                    .padding(.leading, UIScreen.main.bounds.size.width / 10)
                    .padding(.trailing, UIScreen.main.bounds.size.width / 5)

                    Button {} label: {
                        Text("\(Image(systemName: "ellipsis"))")
                            .foregroundColor(.black)
                            .opacity(Constants.Opacity.playerElementsOpacity)
                            .frame(width: 30, height: 30, alignment: .center)
                            .background(
                                Color.white
                                    .cornerRadius(20)
                                    .shadow(color: .gray, radius: 3, x: 1.0, y: 1.0)
                            )
                    }
                    .frame(
                        maxWidth: UIScreen.main.bounds.size.width,
                        alignment: .trailing
                    )
                    .padding(.trailing, 40)
                }

                Slider(value: $currentTime, in: 0...totalTime)
                    .accentColor(Color.white).opacity(Constants.Opacity.playerElementsOpacity)
                    .frame(maxWidth: UIScreen.main.bounds.size.width / 1.25)
                    .padding([.leading, .trailing], Constants.Paddings.sliderPadding)
                    .padding(.top, Constants.Paddings.sliderPadding)
                    .padding(.bottom, 5)

                HStack {
                    Text("\(timeString(time:currentTime))")

                    Spacer()

                    Text("-\(timeString(time: totalTime - currentTime))")
                }
                .foregroundColor(Color.white).opacity(Constants.Opacity.playerElementsOpacity)
                .frame(
                    maxWidth: (UIScreen.main.bounds.size.width / 1.25),
                    maxHeight: 3,
                    alignment: .leading
                )
                .padding(.bottom, 50)

                HStack {
                    Button {} label: {
                        Image(systemName: "backward.fill")
                            .resizable()
                            .scaledToFill()
                            .frame(
                                width: Constants.Frames.playerMediumButtonsFrame,
                                height: Constants.Frames.playerMediumButtonsFrame
                            )
                    }

                    Button {} label: {
                        Image(systemName: "play.fill")
                            .resizable()
                            .scaledToFill()
                            .frame(
                                width: Constants.Frames.playerMediumButtonsFrame,
                                height: Constants.Frames.playerMediumButtonsFrame
                            )
                            .padding([.leading, .trailing], Constants.Paddings.playerControlButtonPadding)
                    }

                    Button {} label: {
                        Image(systemName: "forward.fill")
                            .resizable()
                            .scaledToFill()
                            .frame(
                                width: Constants.Frames.playerMediumButtonsFrame,
                                height: Constants.Frames.playerMediumButtonsFrame
                            )
                    }
                }
                .foregroundColor(Color.white).opacity(Constants.Opacity.playerElementsOpacity)
                .padding(.bottom, 50)

                HStack {
                    Image(systemName: "speaker.fill")
                        .foregroundColor(Color.white).opacity(Constants.Opacity.playerElementsOpacity)

                    Slider(value: $volumeLevel, in: 0...1)
                        .accentColor(Color.white).opacity(Constants.Opacity.playerElementsOpacity)
                        .padding([.leading, .trailing], Constants.Paddings.sliderPadding)

                    Image(systemName: "speaker.wave.3.fill")
                        .foregroundColor(Color.white).opacity(Constants.Opacity.playerElementsOpacity)
                }
                .frame(maxWidth: UIScreen.main.bounds.size.width / 1.25)
                .padding(.bottom, 60)

                HStack {
                    Button {} label: {
                        Image(systemName: "quote.bubble")
                            .resizable()
                            .scaledToFill()
                            .frame(
                                width: Constants.Frames.playerBottomButtonsFrame,
                                height: Constants.Frames.playerBottomButtonsFrame
                            )
                    }

                    Button {} label: {
                        Image(systemName: "airplayaudio")
                            .resizable()
                            .scaledToFill()
                            .frame(
                                width: Constants.Frames.playerBottomButtonsFrame,
                                height: Constants.Frames.playerBottomButtonsFrame
                            )
                            .padding([.leading, .trailing], Constants.Paddings.playerControlButtonPadding)
                    }
                    
                    Button {} label: {
                        Image(systemName: "shuffle")
                            .resizable()
                            .scaledToFill()
                            .frame(
                                width: Constants.Frames.playerBottomButtonsFrame,
                                height: Constants.Frames.playerBottomButtonsFrame
                            )
                    }
                }
                .foregroundColor(Color.white).opacity(Constants.Opacity.playerElementsOpacity)

                Spacer()
            }
        }
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}

func timeString(time: Double) -> String {
    let minute = Int(time) / 60 % 60
    let second = Int(time) % 60
    return String(format: "%02i:%02i", minute, second)
}
