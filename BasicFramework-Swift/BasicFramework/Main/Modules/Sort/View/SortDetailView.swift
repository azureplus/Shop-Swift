//
//  SortDetailView.swift
//  BasicFramework
//
//  Created by kk on 2020/3/2.
//  Copyright © 2020 kk. All rights reserved.
//

import UIKit

class SortDetailView: BasicView {

    private lazy var collection: UICollectionView = {
        let collection: UICollectionView = UICollectionView.init(frame: self.bounds, collectionViewLayout: ({
            let layout = UICollectionViewFlowLayout()
            return layout
        })())
        collection.backgroundColor = UIColor.brown
        collection.delegate = self
        collection.dataSource = self
        return collection
    }()
    
    override func initUI() {
        self.addSubview(self.collection)
    }

}

extension SortDetailView: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: SortDetailCell = SortDetailCell.loadCode(collection: collectionView, index: indexPath) as! SortDetailCell
        return cell
    }
    
}

extension SortDetailView: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.width / 3
        let height = width + countcoordinatesX(designWidth: 20)
        return CGSize(width: width, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
}

