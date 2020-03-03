//
//  GuideAdView.swift
//  BasicFramework
//
//  Created by kk on 2020/1/11.
//  Copyright © 2020 kk. All rights reserved.
//

import UIKit

/// 广告
class GuideAdView: BasicView {
    
    // 广告底部高度
    let bottomHeight: Int = kSafeAreaBottomHeight + 100
    
    // 广告
    var image: UIImage? {
        didSet {
            self.imageView.image = oldValue
        }
    }
    
    // Logo
    var logo: UIImage? {
        didSet {
            self.logoView.image = oldValue
        }
    }
    
    // Logo
    var name: String? {
        didSet {
            self.nameLabel.text = oldValue
        }
    }
    
    // 广告控件
    lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = UIColor.red
        return imageView
    }()
    
    // 底部控件
    lazy var bottomView: UIView = {
        let bottomView = UIView()
        bottomView.backgroundColor = UIColor.black
        return bottomView
    }()
    
    // Logo控件
    lazy var logoView: UIImageView = {
        let logoView = UIImageView()
        logoView.backgroundColor = UIColor.red
        return logoView
    }()
    
    // 文字控件
    lazy var nameLabel: UILabel = {
        let nameLabel = UILabel()
        nameLabel.text = "123123"
        nameLabel.backgroundColor = kMainColor
        return nameLabel
    }()
    
    
    override func initUI() {
        self.addSubview(self.imageView)
        self.addSubview(self.bottomView)
        self.bottomView.addSubview(self.nameLabel)
        self.bottomView.addSubview(self.logoView)
        self.imageView.snp.makeConstraints { (make) in
            make.left.equalTo(0)
            make.top.equalTo(0)
            make.width.equalTo(kScreenWidth)
            make.height.equalTo(kScreenHeight - bottomHeight)
        }
        self.bottomView.snp.makeConstraints { (make) in
            make.left.equalTo(self.imageView)
            make.top.equalTo(self.imageView.snp_bottom)
            make.width.equalTo(self.imageView.snp_width)
            make.bottom.equalTo(0)
        }
        self.nameLabel.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.bottomView.snp_centerX).offset(countcoordinatesX(designWidth: 30))
            make.centerY.equalTo(self.bottomView.snp_centerY)
        }
        self.logoView.snp.makeConstraints { (make) in
            make.centerY.equalTo(self.bottomView.snp_centerY)
            make.right.equalTo(self.nameLabel.snp_left).offset(countcoordinatesX(designWidth: -20))
            make.width.equalTo(countcoordinatesX(designWidth: 100))
            make.height.equalTo(self.logoView.snp_width)
        }
    }
    
    
}
