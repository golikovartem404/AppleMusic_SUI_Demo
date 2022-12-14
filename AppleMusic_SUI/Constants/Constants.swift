//
//  Constants.swift
//  AppleMusic_SUI
//
//  Created by User on 26.11.2022.
//

import Foundation
import SwiftUI

enum Constants {

    enum Insets {
        static let collectionViewInset: CGFloat = 4
        static let sectionInset: CGFloat = 8
    }

    enum CollectionViewElementsSize {
        static let itemWidth: CGFloat = 0.5
        static let itemHeight: CGFloat = 1
        static let groupWidth: CGFloat = 1
        static let groupHeight: CGFloat = 0.35
        static let headerWidth: CGFloat = 1
        static let headerHeight: CGFloat = 45
    }

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

        static let searchViewMainPadding: CGFloat = 12
        static let searchBarHStackTop: CGFloat = 5

        static let playlistsListTop: CGFloat = 10

        static let playerControlButtonPadding: CGFloat = 70
        static let sliderPadding: CGFloat = 10
    }

    enum Constraints {
        static let cellTitleLeading: CGFloat = 10
        static let cellTitleBottom: CGFloat = -12
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

        static let searchBarHStackHeight : CGFloat = 40

        static let searchResultItemImageWidthHeight: CGFloat = 45
        static let searchResultItemHStackHeight: CGFloat = 60
        static let searchResultItemButtonHeightWidth: CGFloat = 20

        static let myLibraryViewTextWidth: CGFloat = 150

        static let detailNavigationBarButtonWidthHeight: CGFloat = 26
        static let playlistItemSize: CGFloat = 330
        static let trackItemSize: CGFloat = 240
        static let trackItemImage: CGFloat = 185
        static let trackItemHeight: CGFloat = 235
        static let trackListHeight: CGFloat = 270
        static let playlistImageWidth: CGFloat = 390
        static let playlistsListHeight: CGFloat = 365

        static let playerMediumButtonsFrame: CGFloat = 30
        static let playerBottomButtonsFrame: CGFloat = 25
    }

    enum FontSize {
        static let listItemTextFontSize: CGFloat = 18
        static let commonLibraryTitleFontSize: CGFloat = 25

        static let radioStationItemSubtitle: CGFloat = 16
        static let radioStationItemTitle: CGFloat = 20

        static let stationsSectionHeader: CGFloat = 24

        static let searchBarText :CGFloat = 18
        static let searchResultItemTextFontSize: CGFloat = 14

        static let myLibraryText: CGFloat = 17

        static let detailNavigationBarButtonFontSize: CGFloat = 18
        static let trackItemText: CGFloat = 13
        static let playlicatCategoryText: CGFloat = 15
        static let playlicatTitleText: CGFloat = 16
        static let playlicatDescriptionText: CGFloat = 18
        static let trackListText: CGFloat = 20

        static let playerTrackText: CGFloat = 27
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
            static let artistName = "Imagine Dragons"
            static let songName = "Radioactive"
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
            static let categoryListHeader = "Search by category"
        }

        enum TextFieldPlaceholders {
            static let searchBarPlaceholder = "Search playlists and tracks"
        }

        enum ButtonLabels {
            static let cancelButton = "Cancel"
        }

        enum CellsText {
            static let playlist = "Playlist –"
            static let track = "Track –"
        }

        enum PickerMode {
            static let appleMusicLibrary = "Apple Music"
            static let myLibrary = "My library"
        }

        enum MyLibraryViewTitle {
            static let title = "Your library is empty"
        }

        enum DetailCategoryViewText {
            static let moreButtonAction = "More options button pressed"
            static let navigationTitle = "The greatest hits"
            static let trackListTitle = "Mood is relax"
        }

        enum Identifiers {
            static let categoryCellIdentifier = "CategoryCollectionViewCell"
            static let headerIdentifier = "CategoryCollectionHeader"
        }
    }

    enum Opacity {
        static let playerElementsOpacity: CGFloat = 0.8
    }
}
