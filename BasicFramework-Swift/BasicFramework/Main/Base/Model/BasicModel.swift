//
//  BasicModel.swift
//  BasicFramework
//
//  Created by zanhua on 2020/1/10.
//  Copyright © 2020 kk. All rights reserved.
//

import Foundation
import HandyJSON

/// 直播顶部排行榜数据模型
class BasicModel: HandyJSON {
    
    var flag: Bool?
    var code: Int = 0
    var message: String?
    var data: [Any]?
    
    required init() {
        
    }
    
}
