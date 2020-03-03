//
//  BasicCollectionView.swift
//  BasicFramework
//
//  Created by kk on 2020/3/2.
//  Copyright © 2020 kk. All rights reserved.
//

import UIKit

class BasicCollectionView: UICollectionView {

    static func loadCode(frame: CGRect, layout: UICollectionViewLayout) -> BasicCollectionView {
        let collection: BasicCollectionView = self.init(frame: frame, collectionViewLayout: layout)
        collection.initUI()
        return collection
    }
    
    required override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initUI() {
        
    }
    
}
