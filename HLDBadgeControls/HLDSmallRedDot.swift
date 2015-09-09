//
//  HLDSmallRedDot.swift
//  HLDBadgeControlsDemo
//
//  Created by 刘铎 on 15/9/9.
//  Copyright © 2015年 Derek Liu. All rights reserved.
//

import UIKit

class HLDSmallRedDot: UIView {
    
    struct Constants {
        static let diameter: CGFloat = 6
    }

    init() {
        super.init(frame: CGRect(x: 0, y: 0, width: Constants.diameter, height: Constants.diameter))
        
        layer.cornerRadius = CGRectGetWidth(frame) / 2.0
        layer.masksToBounds = true
        backgroundColor = UIColor.redColor()
        userInteractionEnabled = false
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
