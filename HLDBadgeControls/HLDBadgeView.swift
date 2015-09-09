//
//  HLDBadgeView.swift
//  HLDBadgeControlsDemo
//
//  Created by 刘铎 on 15/9/9.
//  Copyright © 2015年 Derek Liu. All rights reserved.
//

import UIKit

public class HLDBadgeView: UILabel {
    
    struct Constants {
        static let frame = CGRect(x: 0, y: 0, width: 20, height: 20)
        static let defaultBackgroundColor = UIColor(red: 250/255.0, green: 82/255.0, blue: 82/255.0, alpha: 1.0)
        static let defaultFont = UIFont.systemFontOfSize(14)
    }
    
    var autoHideWhenZero: Bool = false {
        didSet {
            if let text = text {
                if let count = UInt(text) {
                    setCount(count)
                }
            }
        }
    }

    init() {
        super.init(frame: Constants.frame)
        
        backgroundColor = Constants.defaultBackgroundColor
        layer.cornerRadius = CGRectGetHeight(frame) / 2.0
        layer.masksToBounds = true
        textAlignment = .Center
        textColor = UIColor.whiteColor()
        font = Constants.defaultFont
        setCount(0)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func setCount(count: UInt) {
        switch count {
        case 0..<10:
            text = "\(count)"
        case 10..<100:
            text = "\(count)"
            frame.size.width = 29
        default:
            text = "99+"
            frame.size.width = 38
        }
        
        hidden = (autoHideWhenZero && count == 0) ? true : false
    }

}
