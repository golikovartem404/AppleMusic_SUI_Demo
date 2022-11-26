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
            Text("Search your music?")
                .font(.system(size: 25, weight: .bold, design: .default))
            Text("All your music which you buy in iTunes Store stores here")
                .font(.subheadline)
                .foregroundColor(.gray)
        }
        .frame(width: 250)
        .multilineTextAlignment(.center)
    }
}

struct CommonLibraryView_Previews: PreviewProvider {
    static var previews: some View {
        CommonLibraryView()
    }
}
