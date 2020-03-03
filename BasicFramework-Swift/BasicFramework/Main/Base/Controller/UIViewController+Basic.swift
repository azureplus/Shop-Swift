//
//  UIViewController+Basic.swift
//  BasicFramework
//
//  Created by zanhua on 2020/1/9.
//  Copyright © 2020 kk. All rights reserved.
//

import UIKit


var myNameKey = 100

extension UIViewController {
    
    var customNavBar: WRCustomNavigationBar {
        set {
            objc_setAssociatedObject(self, &myNameKey, newValue, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
        get {
            if let rs = objc_getAssociatedObject(self, &myNameKey) as? WRCustomNavigationBar {
                return rs
            }
            
            let customNavBar: WRCustomNavigationBar! = WRCustomNavigationBar.init(frame: CGRect.init(x: 0, y: 0, width: Int(kScreenWidth), height: kNavigationBarHeight))
            self.customNavBar = customNavBar
            return customNavBar
        }
    }
    
}
