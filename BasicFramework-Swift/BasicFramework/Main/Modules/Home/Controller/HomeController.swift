//
//  HomeController.swift
//  BasicFramework
//
//  Created by zanhua on 2020/1/10.
//  Copyright © 2020 kk. All rights reserved.
//

import UIKit

class HomeController: BasicViewController {
    
    // 搜索控件
    private lazy var searchView: HomeSearchView = {
        let searchView: HomeSearchView = HomeSearchView.loadCode(frame: self.customNavBar.bounds) as! HomeSearchView
        return searchView
    }()
    
    // 列表
    private lazy var collectionView: HomeCollectionView = {
        let collectionView = HomeCollectionView.loadCode(frame:({
            let height = kScreenHeight - kNavigationBarHeight - kTabbarHeight
            return CGRect.init(x: 0, y: kNavigationBarHeight, width: kScreenWidth, height: height)
        })(), layout: ({
            let layout = UICollectionViewFlowLayout.init()
            return layout
        })()) as! HomeCollectionView
        return collectionView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        UIApplication.shared.statusBarStyle = .default
        
    }
    
    override func initUI() {
        self.customNavBar.addSubview(self.searchView)
        self.view.addSubview(self.collectionView)
    }
    
}



