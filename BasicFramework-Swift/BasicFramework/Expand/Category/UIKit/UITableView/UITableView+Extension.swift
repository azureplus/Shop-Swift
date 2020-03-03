//
//  UITableView+Extension.swift
//  BasicFramework
//
//  Created by kk on 2020/1/12.
//  Copyright © 2020 kk. All rights reserved.
//

import UIKit

extension UITableView {
    
     // 隐藏多余线
    func lineHide() {
        self.tableFooterView = UIView(frame: CGRect.zero)
        self.separatorColor = kClearColor
    }
    
    // 设置tableview横线
    func lineAll() {
        self.separatorInset = UIEdgeInsets.zero
    }
    
    // 设置tableview横线(有间隙)
    func linePadding() {
        self.separatorInset = UIEdgeInsets.init(top: 0, left: 20, bottom: 0, right: 20)
    }

}
