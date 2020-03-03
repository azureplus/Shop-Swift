//
//  HomeHorizontalCell.swift
//  BasicFramework
//
//  Created by kk on 2020/3/2.
//  Copyright © 2020 kk. All rights reserved.
//

import UIKit

class HomeHorizontalCell: BasicCollectionCell {
    
    // 图标
    private lazy var icon: UIImageView = {
        let icon: UIImageView = UIImageView()
        icon.backgroundColor = UIColor.black
        return icon
    }()
    
    // 标题
    private lazy var nameLabel: UILabel = {
        let nameLabel: UILabel = UILabel()
        nameLabel.backgroundColor = UIColor.black
        nameLabel.text = "asd"
        return nameLabel
    }()
    
    // 价格
    private lazy var priceLabel: UILabel = {
        let priceLabel: UILabel = UILabel()
        priceLabel.backgroundColor = UIColor.black
        priceLabel.text = "asd"
        return priceLabel
    }()
    
    override func initUI() {
        self.backgroundColor = UIColor.purple
        self.contentView.addSubview(self.icon)
        self.contentView.addSubview(self.nameLabel)
        self.contentView.addSubview(self.priceLabel)
        self.icon.snp.makeConstraints { (make) in
            make.left.equalTo(countcoordinatesX(designWidth: 15))
            make.centerX.equalToSuperview()
            make.top.equalTo(countcoordinatesX(designWidth: 15))
            make.height.equalTo(self.icon.snp.width)
        }
        self.nameLabel.snp.makeConstraints { (make) in
            make.left.equalTo(self.icon.snp.left)
            make.centerX.equalToSuperview()
            make.top.equalTo(self.icon.snp.bottom).offset(countcoordinatesX(designWidth: 10))
        }
        self.priceLabel.snp.makeConstraints { (make) in
            make.left.equalTo(self.icon.snp.left)
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().offset(countcoordinatesX(designWidth: -15))
        }
    }
    
}
