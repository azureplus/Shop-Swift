//
//  UI.swift
//  BasicFramework
//
//  Created by zanhua on 2020/1/13.
//  Copyright © 2020 kk. All rights reserved.
//

import UIKit

extension UITabBar {
    
    func hideTopLine() {
        let TabBarLine = UITabBar.appearance()
        TabBarLine.shadowImage = UIImage()
        TabBarLine.backgroundImage = UIImage()
        
        for view in self.subviews {
            if Int(view.width) == kScreenWidth {
                for image in view.subviews {
                    if image.height < 2 {
                        image.isHidden = true
                    }
                }
            }
        }
    }
}
