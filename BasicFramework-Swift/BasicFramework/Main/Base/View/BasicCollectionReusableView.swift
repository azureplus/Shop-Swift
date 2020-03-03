//
//  BasicCollectionReusableView.swift
//  BasicFramework
//
//  Created by kk on 2020/1/12.
//  Copyright © 2020 kk. All rights reserved.
//

import UIKit

protocol BasicCollectionReusableViewProtocol {
    
    // 初始化
    static func loadCode(collection: UICollectionView, kind: String, index: IndexPath) -> BasicCollectionReusableView
    
    // 初始化UI
    func initUI()
    
    // 获取高度
    static func getCellSize(data: Any?) -> CGSize
    
}

class BasicCollectionReusableView: UICollectionReusableView, BasicCollectionReusableViewProtocol {
    
    
    static func loadCode(collection: UICollectionView, kind: String, index: IndexPath) -> BasicCollectionReusableView {
        let identifier: String = NSStringFromClass(self)
        collection.register(self, forSupplementaryViewOfKind: kind, withReuseIdentifier: identifier)
        let view: BasicCollectionReusableView = collection.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: identifier, for: index) as! BasicCollectionReusableView
        view.initUI()
        return view
    }
    
    func initUI() {
        
    }
    
    class func getCellSize(data: Any?) -> CGSize {
        return CGSize.zero
    }
    
    
}
