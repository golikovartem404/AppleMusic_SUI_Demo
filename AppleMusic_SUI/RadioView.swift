//
//  RadioView.swift
//  AppleMusic_SUI
//
//  Created by User on 03.12.2022.
//

import SwiftUI

struct RadioView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                FavouritesView()
            }
                .navigationBarTitle("Radio")
        }
    }
}

struct RadioView_Previews: PreviewProvider {
    static var previews: some View {
        RadioView()
    }
}
