//
//  HomeCarouselCell.swift
//  BasicFramework
//
//  Created by kk on 2020/3/2.
//  Copyright © 2020 kk. All rights reserved.
//

import UIKit

class HomeCarouselCell: BasicCollectionCell {
    
//    // 搜索控件
//    private lazy var bannerView: LLCycleScrollView = {
//        let bannerView = LLCycleScrollView.llCycleScrollViewWithFrame(self.bounds)
//        bannerView.autoScroll = true
//        bannerView.infiniteLoop = true
//        bannerView.autoScrollTimeInterval = 2.0
//        bannerDemo.placeHolderImage = kPlaceHolderImage
//        bannerDemo.coverImage = kPlaceHolderImage
//        bannerView.imageViewContentMode = .scaleToFill
//        bannerView.scrollDirection = .horizontal
//        // 设置当前PageControl的样式 (.none, .system, .fill, .pill, .snake)
//        bannerView.customPageControlStyle = .snake
//        // 非.system的状态下，设置PageControl的tintColor
//        bannerView.customPageControlInActiveTintColor = UIColor.red
//        // 设置.system系统的UIPageControl当前显示的颜色
//        bannerView.pageControlCurrentPageColor = UIColor.white
//        // 非.system的状态下，设置PageControl的间距(默认为8.0)
//        bannerView.customPageControlIndicatorPadding = 8.0
//        // 设置PageControl的位置 (.left, .right 默认为.center)
//        bannerView.pageControlPosition = .center
//
////        // 模拟网络图片获取
////        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + .seconds(2)) {
////            bannerView.imagePaths = imagesURLStrings
////        }
//        return bannerView
//    }()
    
    override func initUI() {
        self.backgroundColor = UIColor.red
//        self.addSubview(self.bannerView)
    }
    
    
    
}
