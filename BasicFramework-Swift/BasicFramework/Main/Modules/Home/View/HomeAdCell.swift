//
//  HomeAdCell.swift
//  BasicFramework
//
//  Created by kk on 2020/3/2.
//  Copyright © 2020 kk. All rights reserved.
//

import UIKit

class HomeAdCell: BasicCollectionCell {
    
    // 数组
    private lazy var images: [UIImageView] = {
        return []
    }()
    
    
    override func initUI() {
        self.backgroundColor = UIColor.green
        
        for i in 0..<5 {
            let imageView: UIImageView = UIImageView()
            imageView.backgroundColor = UIColor.black
            self.contentView.addSubview(imageView)
            self.images.append(imageView)
            if i == 0 {
                imageView.snp.makeConstraints { (make) in
                    make.left.equalToSuperview()
                    make.top.equalToSuperview()
                    make.height.equalToSuperview()
                    make.width.equalToSuperview().dividedBy(7/3)
                }
            } else if i == 1 {
                imageView.snp.makeConstraints { (make) in
                    make.left.equalTo(self.images[0].snp_right)
                    make.top.equalToSuperview()
                    make.right.equalToSuperview()
                    make.height.equalToSuperview().dividedBy(2)
                }
            } else if i == 2 {
                imageView.snp.makeConstraints { (make) in
                    make.left.equalTo(self.images[0].snp.right)
                    make.top.equalTo(self.images[1].snp.bottom)
                    make.width.equalTo(self.images[1].snp.width).dividedBy(2)
                    make.height.equalTo(self.images[1].snp.height)
                }
            } else if i == 3 {
                imageView.snp.makeConstraints { (make) in
                    make.left.equalTo(self.images[2].snp.right)
                    make.top.equalTo(self.images[1].snp.bottom)
                    make.width.equalTo(self.images[2].snp.width)
                    make.height.equalTo(self.images[2].snp.height)
                }
            }
        }
        
        
        
        
    }
    
    
    
    
    
}
