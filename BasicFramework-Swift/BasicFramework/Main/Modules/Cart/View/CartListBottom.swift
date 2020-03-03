//
//  CartListBottom.swift
//  BasicFramework
//
//  Created by kk on 2020/3/2.
//  Copyright © 2020 kk. All rights reserved.
//

import UIKit

class CartListBottom: BasicView {
    
    // 0: 普通  1: 编辑
    var listEnum: Int = 0 {
        willSet {
            self.allDesc.isHidden = newValue == 1
            self.priceLabel.isHidden = newValue == 1
            self.tipLabel.isHidden = newValue == 1
        }
    }
    
    // 全选
    private lazy var chooseButton: UIButton = {
        let chooseButton: UIButton = UIButton(type: UIButton.ButtonType.custom)
        chooseButton.setTitle(" 全选", for: UIControl.State.normal)
        chooseButton.setTitle(" 全选", for: UIControl.State.highlighted)
        chooseButton.setTitleColor(kSecondaryTextColor, for: UIControl.State.normal)
        chooseButton.setTitleColor(kSecondaryTextColor, for: UIControl.State.highlighted)
        chooseButton.setImage(kImageNamed(imageName: "check"), for: UIControl.State.normal)
        chooseButton.setImage(kImageNamed(imageName: "check"), for: UIControl.State.highlighted)
        chooseButton.setImage(kImageNamed(imageName: "check_select"), for: UIControl.State.selected)
        chooseButton.contentEdgeInsets = UIEdgeInsets.init(top: 0, left: countcoordinatesX(designWidth: 30), bottom: 0, right: 0)
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
        allDesc.textColor = kSecondaryTextColor
        allDesc.font = kFontRegular(size: 34)
        allDesc.text = "总计："
        return allDesc
    }()
    
    // 金额
    private lazy var priceLabel: UILabel = {
        let priceLabel: UILabel = UILabel()
        priceLabel.textColor = UIColor.red
        priceLabel.font = kFontRegular(size: 32)
        priceLabel.text = "¥439.00"
        return priceLabel
    }()
    
    // 提示
    private lazy var tipLabel: UILabel = {
        let tipLabel: UILabel = UILabel()
        tipLabel.font = kFontRegular(size: 20)
        tipLabel.textColor = kSecondaryTextColor
        tipLabel.text = "全场满199元包邮"
        return tipLabel
    }()

    override func initUI() {
        self.backgroundColor = kWhiteColor
        self.addSubview(self.chooseButton)
        self.addSubview(self.actionButton)
        self.addSubview(self.priceLabel)
        self.addSubview(self.tipLabel)
        self.addSubview(self.allDesc)
        self.chooseButton.snp.makeConstraints { (make) in
            make.left.equalToSuperview()
            make.top.equalToSuperview()
            make.height.equalToSuperview()
        }
        self.actionButton.snp.makeConstraints { (make) in
            make.right.equalToSuperview()
            make.top.equalToSuperview()
            make.height.equalToSuperview()
            make.width.equalTo(self.actionButton.snp.height).multipliedBy(1.7)
        }
        self.priceLabel.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(countcoordinatesX(designWidth: 5))
            make.right.equalTo(self.actionButton.snp.left).offset(countcoordinatesX(designWidth: -10))
            make.height.equalToSuperview().dividedBy(2)
        }
        self.tipLabel.snp.makeConstraints { (make) in
            make.bottom.equalToSuperview().offset(countcoordinatesX(designWidth: -5))
            make.right.equalTo(self.priceLabel.snp.right)
            make.height.equalTo(self.priceLabel.snp.height)
        }
        self.allDesc.snp.makeConstraints { (make) in
            make.right.equalTo(self.priceLabel.snp.left)
            make.centerY.equalTo(self.priceLabel.snp.centerY)
        }
    }
    
}
