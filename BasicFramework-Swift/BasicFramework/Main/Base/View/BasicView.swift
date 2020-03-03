//
//  BasicView.swift
//  BasicFramework
//
//  Created by kk on 2020/1/11.
//  Copyright © 2020 kk. All rights reserved.
//

import UIKit


protocol BasicViewProtocol {
    
    static func loadNib(index: NSInteger, frame: CGRect) -> BasicView
    
    static func loadFirstNib(frame: CGRect) -> BasicView
    
    static func loadLastNib(frame: CGRect) -> BasicView
    
    static func loadCode(frame: CGRect) -> BasicView
    
    static func getViews() -> Array<Any>
    
    func initUI()
}


class BasicView: UIView, BasicViewProtocol {
    
    static func loadNib(index: NSInteger, frame: CGRect) -> BasicView {
        var name: NSString = NSStringFromClass(self) as NSString
        name = name.replacingOccurrences(of: "\(kModuleName).", with: "") as NSString
        let view: BasicView = self.getViews()[index] as! BasicView
        view.frame = frame
        view.initUI()
        return view
    }
    
    static func loadFirstNib(frame: CGRect) -> BasicView {
        let view: BasicView = self.loadNib(index: 0, frame: frame)
        return view
    }
    
    static func loadLastNib(frame: CGRect) -> BasicView {
        let view: BasicView = self.loadNib(index: self.getViews().count - 1, frame: frame)
        return view
    }
    
    static func loadCode(frame: CGRect) -> BasicView {
        let view: BasicView = self.init()
        view.frame = frame
        view.initUI()
        return view
    }
    
    static func getViews() -> Array<Any> {
        var name: NSString = NSStringFromClass(self) as NSString
        name = name.replacingOccurrences(of: "\(kModuleName).", with: "") as NSString
        return Bundle.main.loadNibNamed(name as String, owner: nil, options: nil) ?? []
    }
    
    func initUI() {
        
    }
    
}
