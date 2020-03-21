//
//  SeekerItemSelectinViewController.swift
//  NearBuy
//
//  Created by Tobias Schröpf on 21.03.20.
//  Copyright © 2020 Tobias Schröpf. All rights reserved.
//

import SnapKit
import UIKit

class SeekerItemSelectionViewController: UIViewController {
    enum Style {
        static let headerHeight: CGFloat = 60
        static let rowHeight: CGFloat = 40
    }

    struct Item {
        let title: String
    }

    struct Content {
        let items: [Item]
    }

    private var collectionView: UICollectionView?
    private var dataSource: DefaultDataSource? {
        didSet {
            collectionView?.dataSource = dataSource
        }
    }

    private var content: Content? {
        didSet {
            dataSource = DefaultDataSource(items: content?.items.map { DefaultCellItem(iconColor: .yellow, text: $0.title) } ?? [])
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.headerReferenceSize = CGSize(width: view.frame.size.width, height: Style.headerHeight)
        layout.itemSize = CGSize(width: view.frame.size.width, height: Style.rowHeight)

        let list = UICollectionView(frame: .zero, collectionViewLayout: layout)
        list.backgroundColor = .white
        list.delegate = self
        list.register(DefaultCell.self, forCellWithReuseIdentifier: DefaultCell.reuseIdentifier)
        list.register(SectionHeaderView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: SectionHeaderView.reuseIdentifier)

        view.backgroundColor = .white
        title = R.string.localizable.seeker_item_selection_screen_title()

        view.addSubview(list)
        list.snp.makeConstraints { make -> Void in
            make.edges.equalToSuperview()
        }

        collectionView = list

        content = Content(items: [Item(title: "Klopapier (Pkg.)"), Item(title: "Butter (Pkg.)")])
    }
}

extension SeekerItemSelectionViewController: UICollectionViewDelegate {
    func collectionView(_: UICollectionView, willDisplay _: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        // nothing yet
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        log.debug("ZEFIX - \(indexPath)")
    }
}

extension SeekerItemSelectionViewController: UICollectionViewDelegateFlowLayout {
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: collectionView.frame.size.width, height: Style.rowHeight)
//    }
}