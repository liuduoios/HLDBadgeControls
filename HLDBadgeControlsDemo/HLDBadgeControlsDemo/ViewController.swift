//
//  ViewController.swift
//  HLDBadgeControlsDemo
//
//  Created by 刘铎 on 15/9/9.
//  Copyright © 2015年 Derek Liu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let smallRedDot = HLDSmallRedDot()
        smallRedDot.frame = CGRect(origin: CGPoint(x: 100, y: 100), size: smallRedDot.frame.size)
        view.addSubview(smallRedDot)
        
        let badgeView = HLDBadgeView()
        badgeView.frame = CGRect(origin: CGPoint(x: 200, y: 100), size: badgeView.frame.size)
        badgeView.autoHideWhenZero = true
        badgeView.setCount(344)
        view.addSubview(badgeView)
        
        let button = UIButton(type: .RoundedRect)
        button.frame = CGRectMake(100, 200, 100, 30)
        button.backgroundColor = UIColor.blueColor()
        view.addSubview(button)
        button.hld_setBadgeCount(90)
        
        let cell = UITableViewCell(frame: CGRect(x: 200, y: 200, width: 150, height: 44))
        cell.contentView.backgroundColor = UIColor.yellowColor()
        view.addSubview(cell)
        cell.hld_setCellBadgeCount(20)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

