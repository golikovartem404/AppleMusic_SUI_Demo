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

            Text("Your library is empty")
                .frame(width: 150)
                .font(.system(size: 17))
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
