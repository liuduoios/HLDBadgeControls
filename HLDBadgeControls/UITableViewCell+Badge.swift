//
//  UITableViewCell+Badge.swift
//  HLDBadgeControlsDemo
//
//  Created by 刘铎 on 15/9/9.
//  Copyright © 2015年 Derek Liu. All rights reserved.
//

import UIKit
import ObjectiveC

private var cellBadgeViewAssociationKey: UInt8 = 0

extension UITableViewCell {

    var cellBadgeView: HLDBadgeView? {
        get {
            return objc_getAssociatedObject(self, &cellBadgeViewAssociationKey) as? HLDBadgeView
        }
        set(newValue) {
            objc_setAssociatedObject(self, &cellBadgeViewAssociationKey, newValue, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
    
    public func hld_setCellBadgeCount(count: UInt) {
        if cellBadgeView == nil {
            cellBadgeView = HLDBadgeView()
            cellBadgeView!.autoHideWhenZero = true
            contentView.addSubview(cellBadgeView!)
        }
        
        cellBadgeView!.setCount(count)
        _updateBadgeViewCenter()
    }
    
    private func _updateBadgeViewCenter() {
        cellBadgeView?.center = CGPoint(x: CGRectGetMaxX(contentView.bounds) - CGRectGetWidth(contentView.bounds) * 0.2, y: CGRectGetMidY(contentView.bounds))
    }
    
    public func hld_setX(x: CGFloat) {
        if let badgeView = cellBadgeView {
            var rect = badgeView.frame
            rect.origin.x = x
            badgeView.frame = rect
        }
    }

}
