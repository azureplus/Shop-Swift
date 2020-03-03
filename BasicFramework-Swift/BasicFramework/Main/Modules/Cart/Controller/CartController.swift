//
//  CartController.swift
//  BasicFramework
//
//  Created by kk on 2020/3/2.
//  Copyright © 2020 kk. All rights reserved.
//

import UIKit

class CartController: BasicViewController {
    
    // 列表
    private lazy var list: CartListView = {
        let list: CartListView = CartListView.loadCode(frame: ({
            let top = kNavigationBarHeight
            let height = Int(self.view.height) - top - kTabbarHeight
            return CGRect(x: 0, y: top, width: kScreenWidth, height: height)
        })()) as! CartListView
        return list
    }()
    
    // 0: 普通  1: 编辑
    private lazy var listEnum: Int = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func initUI() {
        self.view.addSubview(self.list)
        self.changeListEnum()
        self.customNavBar.onClickRightButton = ({
            self.listEnum = self.listEnum == 0 ? 1 : 0
            self.changeListEnum()
        })
    }
    
    func changeListEnum() {
        let title = self.listEnum == 0 ? "编辑" : "完成"
        self.customNavBar.wr_setRightButton(withTitle: title, titleColor: kMainTextColor)
        self.list.listEnum = self.listEnum
    }

}
