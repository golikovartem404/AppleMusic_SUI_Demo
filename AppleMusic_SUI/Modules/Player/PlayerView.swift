//
//  PlayerView.swift
//  AppleMusic_SUI
//
//  Created by User on 09.12.2022.
//

import SwiftUI

struct PlayerView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var volumeLevel: Double  = 5.0
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
                    .frame(maxWidth: UIScreen.main.bounds.size.width - (UIScreen.main.bounds.size.width / 3), maxHeight: UIScreen.main.bounds.size.width - (UIScreen.main.bounds.size.width / 3))
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
                        Text("Radioactive")
                            .font(.system(size: 27, weight: .bold))
                            .foregroundColor(.white)
                            .lineLimit(1)
                            .opacity(0.8)
                        Text("Imagine Dragons")
                            .font(.system(size: 27, weight: .bold))
                            .foregroundColor(Color(red: 188/255, green: 173/255, blue: 116/255))
                            .opacity(0.8)
                    }
                    .frame(maxWidth: UIScreen.main.bounds.size.width, alignment: .leading)
                    .padding(.leading, UIScreen.main.bounds.size.width / 10)
                    .padding(.trailing, UIScreen.main.bounds.size.width / 5)

                    Button {} label: {
                        Text("\(Image(systemName: "ellipsis"))")
                            .foregroundColor(.black)
                            .opacity(0.8)
                            .frame(width: 30, height: 30, alignment: .center)
                            .background(
                                Color.white
                                    .cornerRadius(20)
                                    .shadow(color: .gray, radius: 3, x: 1.0, y: 1.0)
                            )
                    }
                    .frame(maxWidth: UIScreen.main.bounds.size.width, alignment: .trailing)
                    .padding(.trailing, 40)
                }

                // time bar
                Slider(value: $currentTime, in: 0...totalTime)
                    .accentColor(Color.white).opacity(0.8)
                    .frame(maxWidth: UIScreen.main.bounds.size.width / 1.25)
                    .padding(.leading, 10)
                    .padding(.trailing, 10)
                    .padding(.top, 10)
                    .padding(.bottom, 5)

                HStack {
                    Text("\(timeString(time:currentTime))")
                    Spacer()
                    Text("-\(timeString(time: totalTime - currentTime))")
                }
                .foregroundColor(Color.white).opacity(0.8)
                .frame(maxWidth: (UIScreen.main.bounds.size.width / 1.25), maxHeight: 3, alignment: .leading)
                .padding(.bottom, 50)

                // back play forward
                HStack {
                    Button {} label: {
                        Image(systemName: "backward.fill")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 30, height: 30)
                    }
                    Button {} label: {
                        Image(systemName: "play.fill")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 30, height: 30)
                            .padding(.leading, 70)
                            .padding(.trailing, 70)
                    }
                    Button {} label: {
                        Image(systemName: "forward.fill")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 30, height: 30)
                    }
                }
                .foregroundColor(Color.white).opacity(0.8)
                .padding(.bottom, 50)

                // volume bar
                HStack {
                    Image(systemName: "speaker.fill")
                        .foregroundColor(Color.white).opacity(0.8)

                    Slider(value: $volumeLevel, in: 0...10)
                        .accentColor(Color.white).opacity(0.8)
                        .padding(.leading, 10)
                        .padding(.trailing, 10)

                    Image(systemName: "speaker.wave.3.fill")
                        .foregroundColor(Color.white).opacity(0.8)
                }
                .frame(maxWidth: UIScreen.main.bounds.size.width / 1.25)
                .padding(.bottom, 60)

                // bottom controls
                HStack {
                    Button {} label: {
                        Image(systemName: "quote.bubble")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 25, height: 25)
                    }
                    Button {} label: {
                        Image(systemName: "airplayaudio")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 25, height: 25)
                            .padding(.leading, 70)
                            .padding(.trailing, 70)
                    }
                    Button {} label: {
                        Image(systemName: "shuffle")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 25, height: 25)
                    }
                }
                .foregroundColor(Color.white).opacity(0.8)

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
