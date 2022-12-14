//
//  CommonLibraryView.swift
//  AppleMusic_SUI
//
//  Created by User on 26.11.2022.
//

import SwiftUI

struct CommonLibraryView: View {
    var body: some View {
        VStack {
            Text(Constants.Strings.LibraryText.title)
                .font(.system(
                    size: Constants.FontSize.commonLibraryTitleFontSize,
                    weight: .bold,
                    design: .default)
                )
            
            Text(Constants.Strings.LibraryText.subtitle)
                .font(.subheadline)
                .foregroundColor(.gray)
        }
        .frame(width: Constants.Frames.commonLibraryViewWidth)
        .multilineTextAlignment(.center)
    }
}

struct CommonLibraryView_Previews: PreviewProvider {
    static var previews: some View {
        CommonLibraryView()
    }
}
