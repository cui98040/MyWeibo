//
//  ProfileTableViewController.swift
//  SinaWeibo
//
//  Created by 崔翔 on 16/2/28.
//  Copyright © 2016年 torresgeekhome. All rights reserved.
//

import UIKit

class ProfileTableViewController: BaseTableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        visitorLoginView?.setUIInfo("visitordiscover_image_profile", title: "登录后，你的微博、相册、个人资料会显示在这里，展示给别人")
    }
    
}