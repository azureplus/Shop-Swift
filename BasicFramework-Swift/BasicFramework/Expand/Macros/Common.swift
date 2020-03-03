//
//  Common.swift
//  BasicFramework
//
//  Created by zanhua on 2020/1/9.
//  Copyright © 2020 kk. All rights reserved.
//

import UIKit
import Foundation


// let ScreenBounds = UIScreen.main.bounds
// let ScreenWidth = UIScreen.main.bounds.size.width
// let ScreenHeight = UIScreen.main.bounds.size.height
// let ScaleWidth = ScreenWidth / 375.0
// let ScaleHeight = ScreenHeight / 667.0
// let ScaleSize = ScreenWidth > 1 ? ScreenWidth : 1




//#pragma mark - 尺寸
//
//
//#define kFontNormal(A)          [UIFont systemFontOfSize:[UIFont adjustFontSize:A]]
//#define kFontBold(A)            [UIFont boldSystemFontOfSize:[UIFont adjustFontSize:A]]
//
//
//


func kFontRegular(size: CGFloat) -> UIFont {
    return kFont(size: size, weight: .regular)
}

func kFontNormal(size: CGFloat) -> UIFont {
    return kFont(size: size, weight: .medium)
}

func kFontBold(size: CGFloat) -> UIFont {
    return kFont(size: size, weight: .bold)
}

func kFont(size: CGFloat, weight: UIFont.Weight) -> UIFont {
    let newSize = kFontSize(size: size)
    return UIFont.systemFont(ofSize: newSize, weight: weight)
}

func kFontSize(size: CGFloat) -> CGFloat {
    let newSize = size / CGFloat(Ppi.getInfo() / 160)
    return newSize
}


func kImageNamed(imageName: String!) -> UIImage? {
    return UIImage.init(named: imageName) ?? nil
}

func kURLFromString(urlString: String!) -> NSURL? {
    return NSURL.init(string: urlString) ?? nil
}

let kPlaceHolderImage: UIImage = kImageNamed(imageName: "placeHolder")!


let kScreenWidth = Int(UIScreen.main.bounds.size.width)
let kScreenHeight = Int(UIScreen.main.bounds.size.height)
let kScreenBounds = UIScreen.main.bounds
let kScreenSize = UIScreen.main.bounds.size


let IS_IPHONEXR: Bool = (kScreenWidth == 414 && kScreenHeight == 896 ? true : false)
let IS_IPHONEX: Bool = (kScreenWidth == 375 && kScreenHeight == 812 ? true : false)
let IS_IPHONE11: Bool = (kScreenWidth == 828 && kScreenHeight == 1792 ? true : false)
let IS_IPHONE11Pro: Bool = (kScreenWidth == 1125 && kScreenHeight == 2436 ? true : false)
let IS_IPHONE11ProMax: Bool = (kScreenWidth == 1242 && kScreenHeight == 2688 ? true : false)
let IS_IPHONE = (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiom.phone)
let IS_PAD = (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiom.pad)


// MARK: 获取系统版本
let iOSVersion = (UIDevice.current.systemVersion as NSString).floatValue
let iOS7Later  = (iOSVersion >= 7.0)
let iOS8Later  = (iOSVersion >= 8.0)
let iOS9Later  = (iOSVersion >= 9.0)
let iOS10Later = (iOSVersion >= 10.0)
let iOS11Later = (iOSVersion >= 11.0)
let iOS12Later = (iOSVersion >= 12.0)
let iOS13Later = (iOSVersion >= 13.0)


// MARK: 控件属性
let kStatusBarHeight = Int((IS_IPHONEX || IS_IPHONEXR) ? 44 : 20)
let kSafeAreaBottomHeight = Int((IS_IPHONEX || IS_IPHONEXR) ? 24 : 0)
let kTabbarHeight = 49 + kSafeAreaBottomHeight
let kNavigationBarHeight = 44 + kStatusBarHeight


// MARK: 管理
let kWindow = UIApplication.shared.keyWindow
let kUserDefaults = UserDefaults.standard
let kApplication = UIApplication.shared
let kNotificationCenter = NotificationCenter.default
let kModuleName = Bundle.main.infoDictionary!["CFBundleExecutable"]!


// MARK: 手机型号
let iPhone5 = (kScreenHeight == 568)
let iPhone6 = (kScreenHeight == 667)
let iPhone6Plus = (kScreenHeight == 736)
let iPhone6PlusUP = (kScreenHeight > 736)


// MARK: 颜色
let kClearColor = UIColor.clear
let kWhiteColor = UIColor.white
// 主颜色
let kMainColor = UIColor.init(hexCode: "#e02506")
let kMainDarkColor = UIColor.init(hexCode: "#dd2202")
// 默认页面背景色
let kDefaultBackGroundColor = UIColor.init(hexCode: "#FAFAFA")
// 深色字体
let kDarkTextColor = UIColor.init(hexCode: "#323232")
// 主要字体颜色
let kMainTextColor = UIColor.init(hexCode: "#4B4B4B")
// 次要字体颜色
let kSecondaryTextColor = UIColor.init(hexCode: "#999999")
// 辅助字体颜色
let kAuxiliaryFontColor = UIColor.init(hexCode: "#cccccc")
// 分割线浅灰色
let kLineColor = UIColor.init(hexCode: "#F0F0F0")
// 其他
let kPageDefaultColor = UIColor.init(hexCode: "#828CA1")



// 横向间隔
let kListHorizontalPadding: CGFloat = countcoordinatesX(designWidth: 30)
// 纵向间隔
let kListVerticalPadding: CGFloat = countcoordinatesX(designWidth: 30)



//
///// 滚动开始
//#define kScrollViewBeginScroll @"kScrollViewBeginScroll"
///// 正在滚动
//#define kScrollViewDidScroll @"kScrollViewDidScroll"
///// 滚动停止
//#define kScrollViewEndScroll @"kScrollViewEndScroll"
//

