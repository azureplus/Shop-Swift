//
//  MineListView.swift
//  BasicFramework
//
//  Created by zanhua on 2020/1/13.
//  Copyright © 2020 kk. All rights reserved.
//

import UIKit


class MineListView: BasicView {
    
    // 列表
    lazy var list: BasicCollectionView = {
        let collectionView = HomeCollectionView.loadCode(frame:self.bounds, layout: ({
            let layout = UICollectionViewFlowLayout.init()
            return layout
        })()) as! HomeCollectionView
        collectionView.delegate = self
        collectionView.dataSource = self
        return collectionView
    }()
    
    override func initUI() {
        self.addSubview(self.list)
    }
    
}


extension MineListView: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else if section == 1 {
            return 2
        }
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cells = [MineHeaderCell.self, MineItemCell.self]
        let cell: BasicCollectionCell = cells[indexPath.section].loadCode(collection: collectionView, index: indexPath)
        return cell
    }
    
}

extension MineListView: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.section == 0 {
            return CGSize.init(width: kScreenWidth, height: 80)
        } else if indexPath.section == 1 {
            var width = kScreenWidth / 3
            if indexPath.row % 3 == 0 {
                width = kScreenWidth - kScreenWidth / 3 * 2
            }
            let height = width / 5 * 3
            return CGSize.init(width: width, height: height)
        }
        return CGSize.zero
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
}
