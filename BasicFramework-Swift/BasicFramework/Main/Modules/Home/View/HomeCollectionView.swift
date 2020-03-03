//
//  HomeCollectionView.swift
//  BasicFramework
//
//  Created by kk on 2020/3/2.
//  Copyright © 2020 kk. All rights reserved.
//

import UIKit

class HomeCollectionView: BasicCollectionView {
    
    override func initUI() {
        self.backgroundColor = UIColor.white
        self.delegate = self
        self.dataSource = self
        self.showsVerticalScrollIndicator = false
    }
    
}


extension HomeCollectionView: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let counts = [1, 6, 1, 1, 2]
        return counts[section]
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cells = [HomeCarouselCell.self, HomeModuleCell.self, HomeAdCell.self, HomeVerticalCell.self, HomeHorizontalCell.self]
        let cell: BasicCollectionCell = cells[indexPath.section].loadCode(collection: collectionView, index: indexPath)
        return cell
    }
    
}


extension HomeCollectionView: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.section == 0 {
            return CGSize.init(width: kScreenWidth, height: kScreenWidth / 5 * 2)
        }
        else if indexPath.section == 1 {
            var width = kScreenWidth / 3
            if indexPath.row % 3 == 0 {
                width = kScreenWidth - kScreenWidth / 3 * 2
            }
            let height = width / 5 * 4
            return CGSize.init(width: width, height: height)
        }
        else if indexPath.section == 2 {
            return CGSize.init(width: kScreenWidth, height: kScreenWidth / 3)
        }
        else if indexPath.section == 3 {
            return CGSize.init(width: kScreenWidth, height: kScreenWidth / 3)
        }
        else if indexPath.section == 4 {
            var width = 0
            if indexPath.row % 2 == 0 {
                width = kScreenWidth / 2
            } else {
                width = kScreenWidth - kScreenWidth / 2
            }
            return CGSize.init(width: width, height: kScreenWidth / 2 + Int(countcoordinatesX(designWidth: 120)))
        }
        return CGSize.zero
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header: HomeVerticalReusableView = HomeVerticalReusableView.loadCode(collection: collectionView, kind: kind, index: indexPath) as! HomeVerticalReusableView
        return header
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        if section == 3 {
            let height = countcoordinatesX(designWidth: 120)
            return CGSize.init(width: CGFloat(kScreenWidth), height: height)
        }
        return CGSize.zero
    }
    
}

