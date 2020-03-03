//
//  BasicNavController.swift
//  BasicFramework
//
//  Created by zanhua on 2020/1/10.
//  Copyright © 2020 kk. All rights reserved.
//

import UIKit

class BasicNavController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if self.viewControllers.count == 1 {
            if viewController.isKind(of: BasicViewController.self) {
                let vc: BasicViewController = viewController as! BasicViewController
                vc.isShowLiftBack = true
            }
            viewController.hidesBottomBarWhenPushed = true
        }
        super.pushViewController(viewController, animated: animated)
    }

}
