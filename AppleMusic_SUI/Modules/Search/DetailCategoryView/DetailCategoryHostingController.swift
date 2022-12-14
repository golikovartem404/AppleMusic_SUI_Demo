//
//  CollectionHostingController.swift
//  AppleMusic_SUI
//
//  Created by User on 14.12.2022.
//

import UIKit
import SwiftUI

final class DetailCategoryViewController: UIHostingController<DetailCategoryView> {

    init() {
        super.init(rootView: DetailCategoryView())
    }

    @objc required dynamic init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
