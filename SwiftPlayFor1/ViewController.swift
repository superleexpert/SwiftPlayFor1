//
//  ViewController.swift
//  SwiftPlayFor1
//
//  Created by Lee on 8/28/15.
//  Copyright (c) 2015 AppStudio. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.grayColor()
        
        let tipLabel: UILabel = UILabel(frame: CGRectMake(100, 50, 150, 30))
        tipLabel.backgroundColor = UIColor.clearColor()
        tipLabel.textColor = UIColor.whiteColor()
        tipLabel.text = "点我进入其他页面"
        self.view.addSubview(tipLabel)
        
        let frontButton: UIButton = UIButton(type: UIButtonType.InfoLight)
        frontButton.frame = CGRectMake(100, 100, 100, 30)
        frontButton.addTarget(self, action: Selector("frontPushAction"), forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(frontButton);
        
    }
    
    func frontPushAction()
    {
        let frontViewController = FrontViewController()
        print("push is ok")
        self.presentViewController(frontViewController, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
