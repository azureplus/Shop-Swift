//
//  SortController.swift
//  BasicFramework
//
//  Created by kk on 2020/3/2.
//  Copyright © 2020 kk. All rights reserved.
//

import UIKit

class SortController: BasicViewController {
    
    // 左侧
    private lazy var mainView: SortMainView = {
        let mainView: SortMainView = SortMainView.loadCode(frame: ({
            let width = kScreenWidth / 3
            let top = kNavigationBarHeight
            let height = kScreenHeight - kTabbarHeight - top
            return CGRect(x: 0, y: top, width: width, height: height)
        })()) as! SortMainView
        mainView.backgroundColor = UIColor.red
        return mainView
    }()
    
    // 右侧
    private lazy var detailView: SortDetailView = {
        let detailView: SortDetailView = SortDetailView.loadCode(frame: ({
            let left = self.mainView.width
            let top = CGFloat(kNavigationBarHeight)
            let width = CGFloat(kScreenWidth) - self.mainView.width
            return CGRect(x: left, y: top, width: width, height: self.mainView.height)
        })()) as! SortDetailView
        detailView.backgroundColor = UIColor.blue
        return detailView
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(self.mainView)
        self.view.addSubview(self.detailView)
    }
    

}
