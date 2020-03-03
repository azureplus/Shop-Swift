//
//  UIView+BlockGesture.swift
//  BasicFramework
//
//  Created by kk on 2020/1/11.
//  Copyright © 2020 kk. All rights reserved.
//

import UIKit

var kActionHandlerTapGestureKey = 100
var kActionHandlerTapBlockKey  = 101
var kActionHandlerLongGestureKey = 102
var kActionHandlerLongBlockKey  = 103

public typealias GestureActionBlock = (_ gesture: UIGestureRecognizer) -> Void

extension UIView {
    
    func addTapActionWithBlock(block: @escaping GestureActionBlock) {
        var gesture: UITapGestureRecognizer? = objc_getAssociatedObject(self, &kActionHandlerTapGestureKey) as? UITapGestureRecognizer
        if gesture == nil {
            gesture = UITapGestureRecognizer.init(target: self, action: #selector(handleActionForTapGesture(gesture:)))
            self.addGestureRecognizer(gesture!)
            objc_setAssociatedObject(self, &kActionHandlerTapGestureKey, gesture, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
        objc_setAssociatedObject(self, &kActionHandlerTapBlockKey, block, objc_AssociationPolicy.OBJC_ASSOCIATION_COPY)
    }
    
    @objc func handleActionForTapGesture(gesture: UITapGestureRecognizer) {
        if gesture.state == UIGestureRecognizer.State.recognized {
            let block: GestureActionBlock? = objc_getAssociatedObject(self, &kActionHandlerTapBlockKey) as? GestureActionBlock;
            if block != nil {
                block!(gesture)
            }
        }
    }
    
    func addLongActionWithBlock(block: @escaping GestureActionBlock) {
        var gesture: UITapGestureRecognizer? = objc_getAssociatedObject(self, &kActionHandlerLongGestureKey) as? UITapGestureRecognizer
        if gesture == nil {
            gesture = UITapGestureRecognizer.init(target: self, action: #selector(handleActionForLongGesture(gesture:)))
            self.addGestureRecognizer(gesture!)
            objc_setAssociatedObject(self, &kActionHandlerLongGestureKey, gesture, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
        objc_setAssociatedObject(self, &kActionHandlerLongBlockKey, block, objc_AssociationPolicy.OBJC_ASSOCIATION_COPY)
    }
    
    @objc func handleActionForLongGesture(gesture: UITapGestureRecognizer) {
        if gesture.state == UIGestureRecognizer.State.recognized {
            let block: GestureActionBlock? = objc_getAssociatedObject(self, &kActionHandlerLongBlockKey) as? GestureActionBlock;
            if block != nil {
                block!(gesture)
            }
        }
    }
    
}
