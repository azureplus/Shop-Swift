//
//  SortDetailCell.swift
//  BasicFramework
//
//  Created by kk on 2020/3/2.
//  Copyright © 2020 kk. All rights reserved.
//

import UIKit

class SortDetailCell: BasicCollectionCell {
    
    // 图标
    private lazy var icon: UIImageView = {
        let icon: UIImageView = UIImageView()
        icon.backgroundColor = UIColor.black
        return icon
    }()
    
    // 文字
    private lazy var nameLabel: UILabel = {
        let nameLabel: UILabel = UILabel()
        nameLabel.text = "123123"
        nameLabel.textAlignment = NSTextAlignment.center
        nameLabel.textColor = kDarkTextColor
        return nameLabel
    }()
    
    override func initUI() {
        self.backgroundColor = UIColor.yellow
        self.addSubview(self.icon)
        self.addSubview(self.nameLabel)
        self.icon.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(-10)
            make.height.equalToSuperview().dividedBy(2)
            make.width.equalTo(self.icon.snp.height)
        }
        self.nameLabel.snp.makeConstraints { (make) in
            make.left.equalToSuperview()
            make.width.equalToSuperview()
            make.top.equalTo(self.icon.snp.bottom).offset(countcoordinatesX(designWidth: 10))
        }
    }
    
}
