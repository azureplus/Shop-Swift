//
//  HomeVerticalCell.swift
//  BasicFramework
//
//  Created by kk on 2020/3/2.
//  Copyright © 2020 kk. All rights reserved.
//

import UIKit

class HomeVerticalCell: BasicCollectionCell {
    
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
    
    // 副标题
    private lazy var nameLabe2: UILabel = {
        let nameLabe2: UILabel = UILabel()
        nameLabe2.backgroundColor = UIColor.black
        nameLabe2.text = "asd"
        return nameLabe2
    }()
    
    // 价格
    private lazy var priceLabel: UILabel = {
        let priceLabel: UILabel = UILabel()
        priceLabel.backgroundColor = UIColor.black
        priceLabel.text = "asd"
        return priceLabel
    }()
    
    override func initUI() {
        self.backgroundColor = UIColor.brown
        self.contentView.addSubview(self.icon)
        self.contentView.addSubview(self.nameLabel)
        self.contentView.addSubview(self.nameLabe2)
        self.contentView.addSubview(self.priceLabel)
        self.icon.snp.makeConstraints { (make) in
            make.left.equalTo(countcoordinatesX(designWidth: 15))
            make.centerY.equalToSuperview()
            make.top.equalTo(countcoordinatesX(designWidth: 15))
            make.width.equalTo(self.icon.snp.height).multipliedBy(1.5)
        }
        self.nameLabel.snp.makeConstraints { (make) in
            make.left.equalTo(self.icon.snp.right).offset(countcoordinatesX(designWidth: 10))
            make.top.equalTo(self.icon.snp.top)
            make.right.equalTo(countcoordinatesX(designWidth: -15))
        }
        self.nameLabe2.snp.makeConstraints { (make) in
            make.left.equalTo(self.nameLabel.snp.left)
            make.top.equalTo(self.nameLabel.snp.bottom).offset(countcoordinatesX(designWidth: 15))
            make.right.equalTo(self.nameLabel.snp.right)
        }
        self.priceLabel.snp.makeConstraints { (make) in
            make.left.equalTo(self.nameLabel.snp.left)
            make.bottom.equalTo(self.icon.snp.bottom)
            make.right.equalTo(self.nameLabel.snp.right)
        }
    }
    
}
