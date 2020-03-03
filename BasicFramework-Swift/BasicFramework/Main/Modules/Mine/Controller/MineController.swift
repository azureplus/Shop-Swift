//
//  MineController.swift
//  BasicFramework
//
//  Created by kk on 2020/1/11.
//  Copyright © 2020 kk. All rights reserved.
//

import UIKit

class MineController: BasicViewController {

    // 列表
    lazy var list: MineListView = {
        let top = -kStatusBarHeight
        let height = kScreenHeight - top - kTabbarHeight
        let list: MineListView = MineListView.loadCode(frame: CGRect(x: 0, y: top, width: kScreenWidth, height: height)) as! MineListView
        return list
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func initUI() {
        super.initUI()
        self.customNavBar.wr_setBottomLineHidden(true)
        self.view.addSubview(self.list)
    }
    
}
