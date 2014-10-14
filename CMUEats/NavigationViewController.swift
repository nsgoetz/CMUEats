//
//  NavigationViewController.swift
//  CMUEats
//
//  Created by Noah Goetz on 10/14/14.
//  Copyright (c) 2014 Noah Goetz. All rights reserved.
//

import UIKit

class NavigationViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationBar.barTintColor = UIColor.blackColor()
        self.navigationBar.translucent = true;
        self.navigationItem.titleView?.tintColor = UIColor.whiteColor()
        self.navigationBar
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
