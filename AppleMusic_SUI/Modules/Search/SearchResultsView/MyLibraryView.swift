//
//  MyLibraryView.swift
//  AppleMusic_SUI
//
//  Created by User on 11.12.2022.
//

import SwiftUI

struct MyLibraryView: View {
    var body: some View {
        VStack {
            Spacer()

            Text(Constants.Strings.MyLibraryViewTitle.title)
                .frame(width: Constants.Frames.myLibraryViewTextWidth)
                .font(.system(size: Constants.FontSize.myLibraryText))
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)

            Spacer()
        }
    }
}

struct MyLibraryView_Previews: PreviewProvider {
    static var previews: some View {
        MyLibraryView()
    }
}
