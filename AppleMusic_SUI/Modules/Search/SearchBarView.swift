//
//  SearchBarView.swift
//  AppleMusic_SUI
//
//  Created by User on 11.12.2022.
//

import SwiftUI

struct SearchBarView: View {
    @Binding var searchText: String
    @Binding var isSearching: Bool

    var body: some View {
        HStack {
            HStack(spacing: 8) {
                Image(systemName: "magnifyingglass")
                    .font(.system(size: Constants.FontSize.searchBarText))
                    .foregroundColor(Color(.systemGray3))
                    .padding(.leading, Constants.Paddings.searchViewMainPadding)

                TextField(Constants.Strings.TextFieldPlaceholders.searchBarPlaceholder, text: $searchText)
                    .onTapGesture {
                        isSearching = true
                    }

                if isSearching {
                    Button(action: { searchText = "" }, label: {
                        Image(systemName: "xmark.circle.fill")
                    })
                    .foregroundColor(Color(.systemGray3))
                    .padding(.trailing, Constants.Paddings.searchViewMainPadding)
                }
            }
            .frame(height: Constants.Frames.searchBarHStackHeight)
            .background(Color.init(.systemGray6))
            .cornerRadius(15)
            .padding(.top, Constants.Paddings.searchBarHStackTop)
            .padding([.leading, .trailing], Constants.Paddings.searchViewMainPadding)

            if isSearching {
                Button {
                    searchText = ""
                    isSearching = false
                    UIApplication.shared.sendAction(
                        #selector(UIResponder.resignFirstResponder),
                        to: nil,
                        from: nil,
                        for: nil
                    )
                } label: {
                    Text(Constants.Strings.ButtonLabels.cancelButton)
                }
                .padding(.trailing, Constants.Paddings.searchViewMainPadding)
            }
        }
        .transition(.move(edge: .trailing))
        .animation(.linear, value: 1)
    }
}
