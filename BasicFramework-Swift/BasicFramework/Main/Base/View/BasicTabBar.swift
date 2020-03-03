//
//  BasicTabBar.swift
//  BasicFramework
//
//  Created by kk on 2020/1/11.
//  Copyright © 2020 kk. All rights reserved.
//

import UIKit

public typealias BasicTabBarClickBlock = (_ index: NSInteger) -> Void

class BasicTabBarItem: BasicView {
    
    var select: Bool? {
        willSet {
            if (self.model != nil) {
                DispatchQueue.main.async {
                    if newValue == true {
                        self.iconView.image = kImageNamed(imageName: self.model!.selectIcon)
                    } else {
                        self.iconView.image = kImageNamed(imageName: self.model!.icon)
                    }
                }
            }
        }
    }
    
    var model: BasicTabBarItemModel? {
        willSet {
            DispatchQueue.main.async {
                self.nameLabel.text = newValue?.name
            }
        }
    }
    
    lazy var iconView: UIImageView = {
        let iconView = UIImageView()
        iconView.contentMode = UIView.ContentMode.scaleAspectFit
        return iconView
    }()
    
    lazy var nameLabel: UILabel = {
        let nameLabel = UILabel()
        nameLabel.textAlignment = NSTextAlignment.center
        nameLabel.textColor = kMainTextColor
        nameLabel.font = kFontRegular(size: 20)
        return nameLabel
    }()
    
    override func initUI() {
        self.addSubview(self.iconView)
        self.addSubview(self.nameLabel)
        self.iconView.snp.makeConstraints { (make) in
            make.left.equalToSuperview()
            make.width.equalToSuperview()
            make.top.equalTo(6)
            make.height.equalTo(25)
        }
        self.nameLabel.snp.makeConstraints { (make) in
            make.top.equalTo(self.iconView.snp_bottom).offset(2)
            make.left.equalToSuperview()
            make.width.equalToSuperview()
        }
    }
    
}

class BasicTabBar: UITabBar {
    
    var block: BasicTabBarClickBlock?
    
    var selectedIndex: NSInteger {
        willSet {
            for index in 0..<self.views.count {
                self.views[index].select = (index == newValue)
                self.views[index].nameLabel.textColor = (index == newValue) ? kMainColor : kMainTextColor
            }
        }
    }
    
    lazy var content: UIView = {
        let content = UIView()
        content.backgroundColor = kWhiteColor
        return content
    }()
    
    lazy var line: UIView = {
        let line = UIView()
        line.backgroundColor = kLineColor
        line.isUserInteractionEnabled = false
        return line
    }()
    
    lazy var views: [BasicTabBarItem] = {
        var views: [BasicTabBarItem] = []
        return views
    }()
    
    var models: [BasicTabBarItemModel]? {
        willSet {
            for index in 0..<newValue!.count {
                let item: BasicTabBarItem = BasicTabBarItem.loadCode(frame: CGRect.zero) as! BasicTabBarItem
                item.addTapActionWithBlock { (gesture) in
                    if self.block != nil {
                        self.block!(index)
                    }
                }
                item.model = newValue?[index]
                item.select = index == 0
                self.content.addSubview(item)
                self.views.append(item)
                item.snp.makeConstraints { (make) in
                    let width = Int(kScreenWidth) / newValue!.count
                    make.left.equalTo(width * index)
                    make.top.equalTo(0)
                    make.width.equalTo(width)
                    make.bottom.equalTo(0)
                }
                self.selectedIndex = 0
            }
        }
    }
    
    func addTabbarClickBlock(block: @escaping BasicTabBarClickBlock) {
        self.block = block
    }
    
    
    init() {
        self.selectedIndex = 0
        super.init(frame: CGRect(x: 0, y: 0, width: Int(kScreenWidth), height: kTabbarHeight))
        DispatchQueue.main.async {
            for item in self.subviews {
                item.isHidden = true
            }
            self.initUI()
        }
    }
    
    func initUI() {
        self.addSubview(self.content)
        self.content.addSubview(self.line)
        self.hideTopLine()
        self.content.snp.makeConstraints { (make) in
            make.left.equalTo(0)
            make.bottom.equalTo(0)
            make.width.equalToSuperview()
            make.height.equalTo(kTabbarHeight)
        }
        self.line.snp.makeConstraints { (make) in
            make.left.equalToSuperview()
            make.top.equalTo(self.content.snp_top)
            make.width.equalToSuperview()
            make.height.equalTo(countcoordinatesX(designWidth: 0.5))
        }
        
        for index in 0..<self.subviews.count {
            if !self.subviews[index].isEqual(self.content) {
                self.subviews[index].alpha = 0
            }
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
