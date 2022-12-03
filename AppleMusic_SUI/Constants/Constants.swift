//
//  Constants.swift
//  AppleMusic_SUI
//
//  Created by User on 26.11.2022.
//

import Foundation
import SwiftUI

enum Constants {

    enum Paddings {
        static let playerImageLeading: CGFloat = 20
        static let playerTextLeading: CGFloat = 5
        static let playerTextTrailing: CGFloat = 15
        static let playButtonTrailing: CGFloat = 10
        static let forwardButtonTrailing: CGFloat = 20

        static let favoriteItemHorizontal: CGFloat = 16
        static let favoriteItemBottom: CGFloat = 16

        static let stationItemVStackLeading: CGFloat = 12

        static let stationsLazyVGridLeading: CGFloat = 16
        static let stationsLazyVGridTrailing: CGFloat = 16
    }

    enum Frames {
        static let listItemViewImageWidth: CGFloat = 20
        static let listItemViewImageHeight: CGFloat = 20
        static let listItemHeight: CGFloat = 40

        static let commonLibraryViewWidth: CGFloat = 250

        static let playerImageWidth: CGFloat = 50
        static let playerImageHeight: CGFloat = 50
        static let playerViewHeight: CGFloat = 80

        static let favoriteItemImageWidth: CGFloat = UIScreen.main.bounds.size.width * 0.9
        static let favoriteItemVStackHeight: CGFloat = UIScreen.main.bounds.size.height * 0.4

        static let stationItemImageWidth: CGFloat = 100
        static let stationItemImageHeight: CGFloat = 100
    }

    enum FontSize {
        static let listItemTextFontSize: CGFloat = 18
        static let commonLibraryTitleFontSize: CGFloat = 25

        static let radioStationItemSubtitle: CGFloat = 16
        static let radioStationItemTitle: CGFloat = 20

        static let stationsSectionHeader: CGFloat = 24
    }

    enum Strings {

        enum NavigationLinkText {
            static let edit = "Edit"
            static let done = "Done"
        }

        enum NavigationBarTitles {
            static let libraryTitle = "Library"
            static let radioTitle = "Radio"
            static let searchTitle = "Search"
        }

        enum LibraryText {
            static let title = "Search your music?"
            static let subtitle = "All your music which you buy in iTunes Store stores here"
        }

        enum PlayerText {
            static let albumImageName = "albumLogo"
            static let songName = "Imagine Dragons - Radioactive"
            static let playButtonImageName = "play.fill"
            static let forwardButtonImageName = "forward.fill"
        }

        enum TabBarTabs {
            static let libraryTabTitle = "Library"
            static let libraryTabImageName = "music.note.house.fill"

            static let radioTabTitle = "Radio"
            static let radioTabImageName = "antenna.radiowaves.left.and.right"

            static let searchTabTitle = "Search"
            static let searchTabImageName = "magnifyingglass"
        }

        enum SectionHeaders {
            static let stationsHeader = "Stations"
        }
    }
}
