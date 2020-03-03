//
//  HomeVerticalReusableView.swift
//  BasicFramework
//
//  Created by kk on 2020/3/2.
//  Copyright © 2020 kk. All rights reserved.
//

import UIKit

class HomeVerticalReusableView: BasicCollectionReusableView {
    
    // 图标
    private lazy var icon: UIImageView = {
        let icon: UIImageView = UIImageView()
        icon.backgroundColor = UIColor.yellow
        return icon
    }()
    
    // 详情
    private lazy var detail: UIImageView = {
        let detail: UIImageView = UIImageView()
        detail.backgroundColor = UIColor.yellow
        return detail
    }()
        
    override func initUI() {
        self.backgroundColor = UIColor.green
        self.addSubview(self.icon)
        self.addSubview(self.detail)
        self.icon.snp.makeConstraints { (make) in
            make.left.equalToSuperview()
            make.top.equalToSuperview()
            make.height.equalToSuperview()
            make.width.equalToSuperview().dividedBy(2)
        }
        self.detail.snp.makeConstraints { (make) in
            make.right.equalToSuperview()
            make.top.equalToSuperview()
            make.height.equalToSuperview()
            make.width.equalToSuperview().dividedBy(2)
        }
    }
    
}
