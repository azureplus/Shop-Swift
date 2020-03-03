//
//  DispatchQueue.swift
//  BasicFramework
//
//  Created by zanhua on 2020/1/13.
//  Copyright © 2020 kk. All rights reserved.
//

import UIKit

extension DispatchQueue {
    
    private static var _onceTracker = [String]()

    public class func once(token: String, block:()->Void) {
        objc_sync_enter(self)
        defer { objc_sync_exit(self) }

        if _onceTracker.contains(token) {
            return
        }

        _onceTracker.append(token)
        block()
    }
    
}
