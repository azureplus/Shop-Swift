//
//  BasicViewController.swift
//  BasicFramework
//
//  Created by zanhua on 2020/1/9.
//  Copyright © 2020 kk. All rights reserved.
//

import UIKit

@objc protocol BasicViewControllerProtocol {
    @objc func initUI()
}


class BasicViewController: UIViewController {
    
    var isShowLiftBack: Bool {
        didSet {
            if self.isShowLiftBack == true {
                let image: UIImage! = kImageNamed(imageName: "navigBarHidden_back")
                self.customNavBar.wr_setLeftButton(withNormal: image, highlighted: image)
            }
            else {
                self.customNavBar.wr_setLeftButton(withNormal: nil, highlighted: nil)
            }
        }
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        self.isShowLiftBack = false
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.registerNavigation()
        self.initUI()
    }
    
    func registerNavigation() {
        var attrs = self.navigationController?.navigationBar.titleTextAttributes
        if attrs == nil {
            attrs = [NSAttributedString.Key:Any]()
        }
        attrs?[NSAttributedString.Key.foregroundColor] = UIColor.white
        self.navigationController?.navigationBar.titleTextAttributes = attrs
        self.navigationController?.navigationBar.isHidden = true
        
        self.view.addSubview(self.customNavBar)
        self.customNavBar.barBackgroundColor = kWhiteColor
        self.customNavBar.wr_setBottomLineColor(kLineColor)
        self.customNavBar.wr_setBottomLineHidden(false)
    }

}


extension BasicViewController: BasicViewControllerProtocol {
    
    func initUI() {
        
    }
    
}
