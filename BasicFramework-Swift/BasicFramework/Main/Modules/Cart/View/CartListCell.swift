//
//  CartListCell.swift
//  BasicFramework
//
//  Created by kk on 2020/3/2.
//  Copyright © 2020 kk. All rights reserved.
//

import UIKit

class CartListCell: BasicTableCell {
    
    // 按钮
    private lazy var mutableButton: UIButton = {
        let mutableButton: UIButton = UIButton(type: UIButton.ButtonType.custom)
        mutableButton.backgroundColor = UIColor.red
        return mutableButton
    }()
    
    // 图标
    private lazy var icon: UIImageView = {
        let icon: UIImageView = UIImageView()
        icon.backgroundColor = UIColor.green
        return icon
    }()
    
    // 标题
    private lazy var nameLabel: UILabel = {
        let nameLabel: UILabel = UILabel()
        nameLabel.text = "asdasd"
        nameLabel.backgroundColor = UIColor.green
        return nameLabel
    }()
    
    // 金额
    private lazy var priceLabel: UILabel = {
        let priceLabel: UILabel = UILabel()
        priceLabel.text = "asdasd"
        priceLabel.backgroundColor = UIColor.green
        return priceLabel
    }()

    override func initUI() {
        self.contentView.addSubview(self.mutableButton)
        self.contentView.addSubview(self.icon)
        self.contentView.addSubview(self.nameLabel)
        self.contentView.addSubview(self.priceLabel)
        self.mutableButton.snp.makeConstraints { (make) in
            make.left.equalTo(0)
            make.top.equalToSuperview()
            make.height.equalToSuperview()
            make.width.equalTo(countcoordinatesX(designWidth: 100))
        }
        self.icon.snp.makeConstraints { (make) in
            make.left.equalTo(self.mutableButton.snp.right)
            make.top.equalTo(countcoordinatesX(designWidth: 15))
            make.centerY.equalToSuperview()
            make.width.equalTo(self.icon.snp.height).offset(countcoordinatesX(designWidth: -30))
        }
        self.nameLabel.snp.makeConstraints { (make) in
            make.left.equalTo(self.icon.snp.right).offset(countcoordinatesX(designWidth: 15))
            make.top.equalTo(self.icon.snp.top)
            make.right.equalTo(countcoordinatesX(designWidth: -15))
        }
        self.priceLabel.snp.makeConstraints { (make) in
            make.left.equalTo(self.icon.snp.right).offset(countcoordinatesX(designWidth: 15))
            make.bottom.equalTo(self.icon.snp.bottom)
        }
    }
    
}
