//
//  UIView+Badge.swift
//  HLDBadgeControlsDemo
//
//  Created by 刘铎 on 15/9/9.
//  Copyright © 2015年 Derek Liu. All rights reserved.
//

import UIKit
import ObjectiveC

private var badgeViewAssociationKey: UInt8 = 0

extension UIView {
    
    var badgeView: HLDBadgeView? {
        get {
            return objc_getAssociatedObject(self, &badgeViewAssociationKey) as? HLDBadgeView
        }
        set(newValue) {
            objc_setAssociatedObject(self, &badgeViewAssociationKey, newValue, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
    
    func setBadgeCount(count: UInt) {
        if badgeView == nil {
            let adgeView = HLDBadgeView()
            badgeView = adgeView
            badgeView!.autoHideWhenZero = true
            addSubview(badgeView!)
        }
        
        badgeView!.setCount(count)
        updateBadgeViewCenter()
    }
    
    private func updateBadgeViewCenter() {
        badgeView!.center = CGPoint(x: CGRectGetMaxX(bounds), y: 0)
    }
    
}