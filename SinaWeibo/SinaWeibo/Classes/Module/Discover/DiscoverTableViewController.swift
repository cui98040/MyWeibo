//
//  DiscoverTableViewController.swift
//  SinaWeibo
//
//  Created by 崔翔 on 16/2/28.
//  Copyright © 2016年 torresgeekhome. All rights reserved.
//

import UIKit

class DiscoverTableViewController: BaseTableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        visitorLoginView?.setUIInfo("visitordiscover_image_message", title: "登录后，最新、最热微博尽在掌握，不再会与实事潮流擦肩而过")
    }
    
}