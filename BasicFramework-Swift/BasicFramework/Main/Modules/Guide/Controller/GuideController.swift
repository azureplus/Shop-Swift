//
//  GuideController.swift
//  BasicFramework
//
//  Created by zanhua on 2020/1/9.
//  Copyright © 2020 kk. All rights reserved.
//

import UIKit
import SwiftyJSON
import HandyJSON
import SnapKit

class GuideController: BasicViewController {
    
    // 启动页
    lazy var launchImageView: UIImageView = {
        let launchImageView = UIImageView()
        launchImageView.image = self.getLaunchImage()
        return launchImageView
    }()
    
    // 广告
    lazy var adView: GuideAdView = {
        let adView = GuideAdView.init()
        adView.isHidden = true
        return adView
    }()
    
    // 新功能
    lazy var featuresView: GuideFeaturesView = {
        let featuresView = GuideFeaturesView.init()
        featuresView.isHidden = true
        return featuresView
    }()
    
    
    // MARK: 初始化
    override func viewDidLoad() {
        super.viewDidLoad()
        self.customNavBar.wr_setBackgroundAlpha(0)
        self.initUI()
        DispatchQueue.main.async {
            kWindow?.rootViewController = BasicTabBarController()
        }
        
    }
    
    override func initUI() -> Void {
        self.view.addSubview(self.launchImageView)
        self.view.addSubview(self.adView)
        self.view.addSubview(self.featuresView)
        launchImageView.snp.makeConstraints { (make) in
            make.left.equalTo(0)
            make.top.equalTo(0)
            make.size.equalTo(kScreenSize)
        }
        adView.snp.makeConstraints { (make) in
            make.left.equalTo(0)
            make.top.equalTo(0)
            make.size.equalTo(kScreenSize)
        }
        featuresView.snp.makeConstraints { (make) in
            make.left.equalToSuperview()
            make.top.equalToSuperview()
            make.size.equalTo(kScreenSize)
        }
    }
    
    
    // MARK: Get
    func getLaunchImage() -> UIImage! {
        let viewSize: CGSize = kScreenSize
        let viewOr: String = "Portrait"
        var launchImage: String?
        let launchImages: Array<Dictionary<String, Any>> = Bundle.main.infoDictionary!["UILaunchImages"] as! Array<Dictionary<String, Any>>
        for dict in launchImages {
            let imageSize: CGSize = NSCoder.cgSize(for: dict["UILaunchImageSize"] as! String)
            let orientation = dict["UILaunchImageOrientation"] as! String
            if (imageSize.equalTo(viewSize) && viewOr == orientation) {
                launchImage = dict["UILaunchImageName"] as? String
            }
        }
        return kImageNamed(imageName: launchImage)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        // 网络请求
//        GuideAPIProvider.request(.recommendAd(channelId: 2)) { (result) in
//            if case let .success(response) = result {
//                // 解析数据
//                let data: [String: Any] = try! response.mapJSON() as! [String : Any]
////                let json: [String: Any] = JSON(data!)
//                if let model = BasicModel.deserialize(from: data) {
//                    print(model)
//                }
//            } else {
//                print("shibai");
//            }
//        }
    }
    

}



