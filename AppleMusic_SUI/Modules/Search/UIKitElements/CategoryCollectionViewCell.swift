//
//  CategoryCollectionViewCell.swift
//  AppleMusic_SUI
//
//  Created by User on 14.12.2022.
//

import UIKit

class CategoryCollectionViewCell: UICollectionViewCell {

    static let identifier = "CotegoryCollectionViewCell"

    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 10
        return imageView
    }()

    private lazy var title: UILabel = {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.textAlignment = .left
        title.numberOfLines = 2
        title.font = .systemFont(ofSize: 16, weight: .black)
        title.textColor = .white
        return title
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        setupHierarchy()
        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupHierarchy() {
        addSubview(imageView)
        imageView.addSubview(title)
    }

    private func setupLayout() {
        NSLayoutConstraint.activate([
            imageView.widthAnchor.constraint(equalTo: contentView.widthAnchor),
            imageView.heightAnchor.constraint(equalTo: contentView.heightAnchor),
            imageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            imageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),

            title.widthAnchor.constraint(equalTo: imageView.widthAnchor),
            title.leadingAnchor.constraint(equalTo: imageView.leadingAnchor, constant: 10),
            title.bottomAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 12)
        ])
    }

    func setData(forModel model: CategoryModel) {
        imageView.image = UIImage(named: model.categoryImage)
        title.text = model.categoryTitle
    }
}
