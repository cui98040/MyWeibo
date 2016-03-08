//
//  AppDelegate.swift
//  SinaWeibo
//
//  Created by 崔翔 on 16/2/23.
//  Copyright © 2016年 torresgeekhome. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        window?.backgroundColor = UIColor.whiteColor()
        window?.makeKeyAndVisible()
        
        //设置主题色
        setThemeColor()
        
        //设置根视图控制器
        window?.rootViewController = MainViewController()
        return true
    }
    
    private func setThemeColor() {
        UINavigationBar.appearance().tintColor = themeColor
        UITabBar.appearance().tintColor = themeColor
    }
    
    
}