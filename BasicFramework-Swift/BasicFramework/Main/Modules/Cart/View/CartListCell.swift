//
//  CartListCell.swift
//  BasicFramework
//
//  Created by kk on 2020/3/2.
//  Copyright © 2020 kk. All rights reserved.
//

import UIKit

class CartListCell: BasicTableCell {
    
    // 0: 普通  1: 编辑
    var listEnum: Int = 0 {
        willSet {
            self.nameLabel.isHidden = newValue == 1
            self.removeButton.isHidden = newValue == 0
        }
    }
    
    // 按钮
    private lazy var mutableButton: UIButton = {
        let mutableButton: UIButton = UIButton(type: UIButton.ButtonType.custom)
        mutableButton.setImage(kImageNamed(imageName: "check"), for: UIControl.State.normal)
        mutableButton.setImage(kImageNamed(imageName: "check"), for: UIControl.State.highlighted)
        mutableButton.setImage(kImageNamed(imageName: "check_select"), for: UIControl.State.selected)
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
        return nameLabel
    }()
    
    // 金额
    private lazy var priceLabel: UILabel = {
        let priceLabel: UILabel = UILabel()
        priceLabel.text = "asdasd"
        return priceLabel
    }()
    
    // 删除
    private lazy var removeButton: UIButton = {
        let removeButton: UIButton = UIButton(type: UIButton.ButtonType.custom)
        removeButton.setImage(kImageNamed(imageName: "trush"), for: UIControl.State.normal)
        removeButton.setImage(kImageNamed(imageName: "trush"), for: UIControl.State.highlighted)
        removeButton.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.right
        removeButton.contentVerticalAlignment = UIControl.ContentVerticalAlignment.top
        return removeButton
    }()
    
    // 数量
    private lazy var numberButton: PPNumberButton = {
        let numberButton: PPNumberButton = PPNumberButton.init(frame: CGRect.zero)
        numberButton.shakeAnimation = true
        numberButton.minValue = 1
        numberButton.maxValue = 10
        numberButton.inputFieldFont = kFontSize(size: 30)
        numberButton.increaseTitle = "＋"
        numberButton.decreaseTitle = "－"
        numberButton.borderColor = kLineColor
        numberButton.isEditing = false
        numberButton.resultBlock = ({ (ppBtn: PPNumberButton?, number: CGFloat, increaseStatus: Bool) -> Void in
            
        })
        return numberButton
    }()
    
    
    override func initUI() {
        self.selectionStyle = UITableViewCell.SelectionStyle.none
        self.contentView.addSubview(self.mutableButton)
        self.contentView.addSubview(self.icon)
        self.contentView.addSubview(self.nameLabel)
        self.contentView.addSubview(self.priceLabel)
        self.contentView.addSubview(self.numberButton)
        self.contentView.addSubview(self.removeButton)
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
            make.width.equalTo(self.icon.snp.height)
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
        self.numberButton.snp.makeConstraints { (make) in
            make.right.equalTo(self.nameLabel.snp.right)
            make.bottom.equalTo(self.priceLabel.snp.bottom)
            make.width.equalTo(countcoordinatesX(designWidth: 200))
            make.height.equalTo(countcoordinatesX(designWidth: 50))
        }
        self.removeButton.snp.makeConstraints { (make) in
            make.right.equalTo(self.numberButton.snp.right)
            make.top.equalTo(self.nameLabel.snp.top)
            make.width.equalTo(countcoordinatesX(designWidth: 70))
            make.height.equalTo(self.removeButton.snp.width)
        }
    }
    
}
