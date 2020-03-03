//
//  BasicTabBarController.swift
//  BasicFramework
//
//  Created by zanhua on 2020/1/10.
//  Copyright © 2020 kk. All rights reserved.
//

import UIKit

class BasicTabBarController: UITabBarController {
    
    override var selectedIndex: Int {
        willSet {
            self.basicTabBar.selectedIndex = newValue
        }
    }

    lazy var models: [BasicTabBarItemModel] = {
        // 文字
        let titles: [String] = ["首页", "分类", "购物车", "我的"]
        // 图标
        let images: [String] = ["tabbar_chart_n", "tabbar_chart_n", "tabbar_chart_n", "tabbar_chart_n"]
        // 图标
        let selectImages: [String] = ["tabbar_chart_s", "tabbar_chart_s", "tabbar_chart_s", "tabbar_chart_s"]
        // 数据
        var models: [BasicTabBarItemModel] = []
        for index in 0..<titles.count {
            let model: BasicTabBarItemModel = BasicTabBarItemModel()
            model.name = titles[index]
            model.icon = images[index]
            model.selectIcon = selectImages[index]
            models.append(model)
        }
        return models
    }()
    
    lazy var vcs: [BasicViewController] = {
        // 控制器
        let vcs: [BasicViewController] = [HomeController(), SortController(), CartController(), MineController()]
        return vcs
    }()
    
    lazy var basicTabBar: BasicTabBar = {
        let tabBar = BasicTabBar()
        tabBar.addTabbarClickBlock { (index) in
            self.selectedIndex = index
        }
        return tabBar
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setValue(self.basicTabBar, forKeyPath: "tabBar")
        self.setRootController()
        self.basicTabBar.models = self.models
        
        self.selectedIndex = 2
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        self.tabBar.height = CGFloat(kTabbarHeight)
        self.tabBar.y = CGFloat(kScreenHeight - kTabbarHeight)
    }
    
    
    func setRootController() {
        // 添加控制器
        for index in 0..<vcs.count {
            self.setChildController(vc: self.vcs[index], model: self.models[index])
        }
    }
    
    func setChildController(vc: BasicViewController, model: BasicTabBarItemModel) {
        let nav: BasicNavController = BasicNavController(rootViewController: vc)
        vc.customNavBar.title = model.name
        vc.isShowLiftBack = false
        vc.title = model.name
        vc.tabBarItem.image = kImageNamed(imageName: model.icon)
        vc.tabBarItem.selectedImage = kImageNamed(imageName: model.icon)
        self.addChild(nav)
    }
    
}
