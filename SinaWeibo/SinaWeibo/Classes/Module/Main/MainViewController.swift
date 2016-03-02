//
//  MainViewController.swift
//  SinaWeibo
//
//  Created by 崔翔 on 16/2/29.
//  Copyright © 2016年 torresgeekhome. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        //添加子视图控制器
        addChildViewControllers()
    }
    
    private func addChildViewControllers(){
        addChildViewController(HomeTableViewController(), title: "首页", imageName: "tabbar_home")
        addChildViewController(MessageTableViewController(), title: "消息", imageName: "tabbar_message_center")
        addChildViewController(DiscoverTableViewController(), title: "发现", imageName: "tabbar_discover")
        addChildViewController(ProfileTableViewController(), title: "我", imageName: "tabbar_profile")
        
    }
    
    private func addChildViewController(vc: UIViewController, title:String, imageName:String){
        //设置颜色
        self.tabBar.tintColor = UIColor.orangeColor()
        //实例化导航视图控制器
        let nav = UINavigationController(rootViewController: vc)
        vc.title = title
        vc.tabBarItem.image = UIImage(named: imageName)
        //        title = "首页"
        //        nav.title = "首页"
        //添加
        addChildViewController(nav)
    }
    
}
