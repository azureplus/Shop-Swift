//
//  CartListBottom.swift
//  BasicFramework
//
//  Created by kk on 2020/3/2.
//  Copyright © 2020 kk. All rights reserved.
//

import UIKit

class CartListBottom: BasicView {
    
    // 全选
    private lazy var chooseButton: UIButton = {
        let chooseButton: UIButton = UIButton(type: UIButton.ButtonType.custom)
        chooseButton.backgroundColor = UIColor.red
        return chooseButton
    }()
    
    // 操作
    private lazy var actionButton: UIButton = {
        let actionButton: UIButton = UIButton(type: UIButton.ButtonType.custom)
        actionButton.backgroundColor = UIColor.red
        actionButton.titleLabel?.font = kFontNormal(size: 30)
        actionButton.setTitle("结算(1)", for: UIControl.State.normal)
        actionButton.setTitleColor(UIColor.white, for: UIControl.State.normal)
        return actionButton
    }()
    
    // 总计
    private lazy var allDesc: UILabel = {
        let allDesc: UILabel = UILabel()
        allDesc.backgroundColor = UIColor.blue
        allDesc.text = "asd"
        return allDesc
    }()
    
    // 金额
    private lazy var priceLabel: UILabel = {
        let priceLabel: UILabel = UILabel()
        priceLabel.backgroundColor = UIColor.yellow
        priceLabel.text = "asd"
        return priceLabel
    }()
    
    // 提示
    private lazy var tipLabel: UILabel = {
        let tipLabel: UILabel = UILabel()
        tipLabel.backgroundColor = UIColor.blue
        tipLabel.text = "asd"
        return tipLabel
    }()

    override func initUI() {
        self.backgroundColor = UIColor.orange
        self.addSubview(self.chooseButton)
        self.addSubview(self.actionButton)
        self.addSubview(self.priceLabel)
        self.addSubview(self.tipLabel)
        self.addSubview(self.allDesc)
        self.chooseButton.snp.makeConstraints { (make) in
            make.left.equalToSuperview()
            make.top.equalToSuperview()
            make.height.equalToSuperview()
            make.width.equalTo(countcoordinatesX(designWidth: 100))
        }
        self.actionButton.snp.makeConstraints { (make) in
            make.right.equalToSuperview()
            make.top.equalToSuperview()
            make.height.equalToSuperview()
            make.width.equalTo(self.actionButton.snp.height).multipliedBy(1.7)
        }
        self.priceLabel.snp.makeConstraints { (make) in
            make.top.equalToSuperview()
            make.right.equalTo(self.actionButton.snp.left).offset(countcoordinatesX(designWidth: -10))
            make.height.equalToSuperview().dividedBy(2)
        }
        self.tipLabel.snp.makeConstraints { (make) in
            make.bottom.equalToSuperview()
            make.right.equalTo(self.priceLabel.snp.right)
            make.height.equalTo(self.priceLabel.snp.height)
        }
        self.allDesc.snp.makeConstraints { (make) in
            make.right.equalTo(self.priceLabel.snp.left).offset(countcoordinatesX(designWidth: -10))
            make.centerY.equalTo(self.priceLabel.snp.centerY)
        }
    }
    
}
