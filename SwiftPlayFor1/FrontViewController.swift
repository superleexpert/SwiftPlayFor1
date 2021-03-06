//
//  FrontViewController.swift
//  SwiftPlayFor1
//
//  Created by Lee on 8/28/15.
//  Copyright (c) 2015 AppStudio. All rights reserved.
//

import UIKit

let kJumpViewNumber = 20150828
let kJumpViewSpace: CGFloat = 30

class FrontViewController: UIViewController {

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.blueColor()
        
        let backButton: UIButton = UIButton(type: UIButtonType.ContactAdd);
        backButton.frame = CGRectMake(20, 200, 44, 44)
        backButton.addTarget(self, action: Selector("backAction"), forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(backButton)
        
        let jumpView: UIView = UIView(frame: CGRectMake(200, 100, 88, 88));
        jumpView.backgroundColor = UIColor.blackColor()
        jumpView.tag = kJumpViewNumber
        let tapGesture = UITapGestureRecognizer(target: self, action: "jumpAction:")
        jumpView.addGestureRecognizer(tapGesture)
        self.view.addSubview(jumpView);
    }
    
    func backAction()
    {
        print("dismiss")
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func jumpAction(tap: UITapGestureRecognizer)
    {
        if (tap.view != nil) {
            let jumpView = tap.view
            let origionX: CGFloat = tap.view!.frame.origin.x
            let origionY: CGFloat = tap.view!.frame.origin.y
            let width: CGFloat = tap.view!.frame.size.width
            let height: CGFloat = tap.view!.frame.size.height

            UIView.animateWithDuration(0.5, animations: {
                jumpView?.frame = CGRectMake(origionX, origionY + kJumpViewSpace, width, height)
            })
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
