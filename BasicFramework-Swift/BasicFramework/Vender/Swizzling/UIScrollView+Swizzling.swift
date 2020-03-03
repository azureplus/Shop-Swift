//
//  UIScrollView+Swizzling.swift
//  BasicFramework
//
//  Created by zanhua on 2020/1/14.
//  Copyright © 2020 kk. All rights reserved.
//

import UIKit

extension UIScrollView: SelfAware {
    
    static func awake() {
        swizzleMethod
    }
    
    private static let swizzleMethod: Void = {
        let originalSelector = #selector(setter: delegate)
        let swizzledSelector = #selector(swiz_setDelegate(delegate:))
        swizzlingForClass(UIScrollView.self, originalSelector: originalSelector, swizzledSelector: swizzledSelector)
    }()
    
    @objc func swiz_setDelegate(delegate: UIScrollViewDelegate) {
        swiz_setDelegate(delegate: delegate)
        
    }
    
   
}
