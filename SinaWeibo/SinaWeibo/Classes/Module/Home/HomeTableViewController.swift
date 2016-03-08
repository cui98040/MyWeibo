//
//  HomeTableViewController.swift
//  SinaWeibo
//
//  Created by 崔翔 on 16/2/28.
//  Copyright © 2016年 torresgeekhome. All rights reserved.
//

import UIKit

class HomeTableViewController: BaseTableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        visitorLoginView?.setUIInfo(nil, title: "关注一些人，回这里看看有什么惊喜")
    }
    
}
