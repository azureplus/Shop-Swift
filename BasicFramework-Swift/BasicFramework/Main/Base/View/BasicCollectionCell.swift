//
//  BasicCollectionCell.swift
//  BasicFramework
//
//  Created by kk on 2020/1/12.
//  Copyright © 2020 kk. All rights reserved.
//

import UIKit

protocol BasicCollectionCellProtocol {
    
    /// 从代码创建cell
    static func loadCode(collection: UICollectionView, index: IndexPath) -> BasicCollectionCell
    /// 初始化UI
    func initUI()
    /// 获取高度
    static func getCellSize(data: Any?) -> CGSize
    
}

class BasicCollectionCell: UICollectionViewCell, BasicCollectionCellProtocol {
    
    
    static func loadCode(collection: UICollectionView, index: IndexPath) -> BasicCollectionCell {
        var name: NSString = NSStringFromClass(self) as NSString
        name = name.replacingOccurrences(of: "\(kModuleName).", with: "") as NSString
        collection.register(self, forCellWithReuseIdentifier: name as String)
        let cell: BasicCollectionCell = collection.dequeueReusableCell(withReuseIdentifier: name as String, for: index as IndexPath) as! BasicCollectionCell
        cell.initUI()
        return cell
    }
    
    func initUI() {
        
    }
    
    class func getCellSize(data: Any?) -> CGSize {
        return CGSize.zero
    }
    
    
}
