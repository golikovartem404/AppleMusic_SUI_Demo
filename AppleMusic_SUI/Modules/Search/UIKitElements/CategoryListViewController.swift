//
//  CategoryListViewController.swift
//  AppleMusic_SUI
//
//  Created by User on 14.12.2022.
//

import UIKit

class CategoryListViewController: UIViewController {

    // MARK: - Outlets

    private lazy var categoryCollection: UICollectionView = {
        let collection = UICollectionView(
            frame: .zero,
            collectionViewLayout: setupCollectionLayout()
        )
        collection.register(
            CategoryCollectionViewCell.self,
            forCellWithReuseIdentifier: CategoryCollectionViewCell.identifier
        )
        collection.register(
            CategoryCollectionHeader.self,
            forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
            withReuseIdentifier: CategoryCollectionHeader.identifier
        )
        collection.delegate = self
        collection.dataSource = self
        collection.translatesAutoresizingMaskIntoConstraints = false
        return collection
    }()

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupHierarchy()
        setupLayout()
    }

    // MARK: - Setups

    private func setupHierarchy() {
        view.addSubview(categoryCollection)
    }

    private func setupLayout() {
        NSLayoutConstraint.activate([
            categoryCollection.topAnchor.constraint(equalTo: view.topAnchor),
            categoryCollection.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            categoryCollection.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            categoryCollection.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }

    private func setupCollectionLayout() -> UICollectionViewCompositionalLayout {
        return UICollectionViewCompositionalLayout() { sectionIndex, _ in
            let itemSize = NSCollectionLayoutSize(
                widthDimension: .fractionalWidth(Constants.CollectionViewElementsSize.itemWidth),
                heightDimension: .fractionalHeight(Constants.CollectionViewElementsSize.itemHeight)
            )
            let item = NSCollectionLayoutItem(layoutSize: itemSize)
            item.contentInsets = .init(
                top: Constants.Insets.collectionViewInset,
                leading: Constants.Insets.collectionViewInset,
                bottom: Constants.Insets.collectionViewInset,
                trailing: Constants.Insets.collectionViewInset
            )

            let groupSize = NSCollectionLayoutSize(
                widthDimension: .fractionalWidth(Constants.CollectionViewElementsSize.groupWidth),
                heightDimension: .fractionalWidth(Constants.CollectionViewElementsSize.groupHeight)
            )
            let group = NSCollectionLayoutGroup.horizontal(
                layoutSize: groupSize,
                subitems: [item]
            )

            let headerSize = NSCollectionLayoutSize(
                widthDimension: .fractionalWidth(Constants.CollectionViewElementsSize.headerWidth),
                heightDimension: .absolute(Constants.CollectionViewElementsSize.headerHeight)
            )
            let header = NSCollectionLayoutBoundarySupplementaryItem(
                layoutSize: headerSize,
                elementKind: UICollectionView.elementKindSectionHeader,
                alignment: .top
            )
            header.contentInsets.leading = Constants.Insets.collectionViewInset
            header.contentInsets.top = Constants.Insets.collectionViewInset
            header.contentInsets.bottom = Constants.Insets.collectionViewInset

            let section = NSCollectionLayoutSection(group: group)
            section.contentInsets.leading = Constants.Insets.sectionInset
            section.contentInsets.trailing = Constants.Insets.sectionInset
            section.boundarySupplementaryItems = [header]
            return section
        }
    }
}

// MARK: - UICollectionView Extension

extension CategoryListViewController: UICollectionViewDataSource, UICollectionViewDelegate {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return CategoryModel.categories.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifier, for: indexPath) as? CategoryCollectionViewCell else { return UICollectionViewCell() }
        let category = CategoryModel.categories[indexPath.row]
        cell.setData(forCategory: category)
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        guard let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: CategoryCollectionHeader.identifier, for: indexPath) as? CategoryCollectionHeader else { return UICollectionReusableView() }
        return header
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        navigationController?.pushViewController(DetailCategoryViewController(), animated: true)
    }
}
