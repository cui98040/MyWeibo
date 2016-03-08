//
//  MainViewController.swift
//  SinaWeibo
//
//  Created by 崔翔 on 16/2/29.
//  Copyright © 2016年 torresgeekhome. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {
    
    
    @objc private func composeDidClick() {
        print(__FUNCTION__)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //由于 tabBar是只读 不能够直接操作,如果要修改  可以使用KVC
        let mainTabBar = MainTabBar()
        //KVC 赋值
        setValue(mainTabBar, forKey: "tabBar")
        //添加子视图控制器
        addChildViewControllers()
        
        //classForCoder 打印函数的类名
        print(tabBar.classForCoder)
        
        //设置点击事件
        mainTabBar.composeBtn.addTarget(self, action: "composeDidClick", forControlEvents: .TouchUpInside)
        
    }
    
    private func addChildViewControllers() {
        addChildViewController(HomeTableViewController(), title: "首页", imageName: "tabbar_home")
        addChildViewController(MessageTableViewController(), title: "消息", imageName: "tabbar_message_center")
        addChildViewController(DiscoverTableViewController(), title: "发现", imageName: "tabbar_discover")
        addChildViewController(ProfileTableViewController(), title: "我", imageName: "tabbar_profile")
    }
    
    
    //重载
    private func addChildViewController(vc: UIViewController,title: String, imageName: String) {
        //实例化导航视图控制器
        let nav = UINavigationController(rootViewController: vc)
        
        //        title = "首页"
        //        nav.title = "首页"
        vc.title = title
        vc.tabBarItem.image = UIImage(named: imageName)
        //        vc.tabBarItem.selectedImage = UIImage(named: imageName + "_highlighted")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        //
        //        vc.tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName : UIColor.orangeColor()], forState: UIControlState.Selected)
        //添加
        addChildViewController(nav)
    }
    
}
