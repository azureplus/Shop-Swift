//
//  GuideFeaturesView.swift
//  BasicFramework
//
//  Created by kk on 2020/1/11.
//  Copyright © 2020 kk. All rights reserved.
//

import UIKit

/// 新功能
class GuideFeaturesView: BasicView {
    
    // Logo
    lazy var scroll: UIScrollView = {
        let scroll = UIScrollView()
        scroll.backgroundColor = UIColor.green
        return scroll
    }()
    
    override func initUI() {
        self.addSubview(self.scroll)
        self.scroll.snp.makeConstraints { (make) in
            make.left.equalTo(0)
            make.top.equalTo(0)
            make.size.equalToSuperview()
        }
    }
    
}
