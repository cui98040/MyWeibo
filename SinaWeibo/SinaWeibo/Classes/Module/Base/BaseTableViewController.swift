//
//  BaseTableViewController.swift
//  SinaWeibo
//
//  Created by 崔翔 on 16/3/8.
//  Copyright © 2016年 torresgeekhome. All rights reserved.
//

import UIKit

//在OC中又多继承  那是用什么替代的
//协议中是必选的方法  如果不实现  就报错
class BaseTableViewController: UITableViewController, VisitorLoginViewDelegate {
    
    //添加用户是否登录标记
    var userLogin = false
    var visitorLoginView: VisitorLoginView?
    //loadVIew是苹果专门为手写代码 准备的  等效与 sb / xib
    //一旦实现这个方法  xib / sb就自动失效
    //会自动检测 view是否为空  如果为空 会自动调用 loadView方法
    override func loadView() {
        
        userLogin ? super.loadView() : loadVisitorView()
    }
    
    private func loadVisitorView() {
        //view的大小  在 viewDidLoad就会设置
        visitorLoginView = VisitorLoginView()
        //设置代理
        visitorLoginView?.visitorDelegate = self
        view = visitorLoginView
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "注册", style: .Plain, target: self, action: "visitorWillRegister")
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "登陆", style: .Plain, target: self, action: "visitorWillLogin")
        
        
    }
    
    //MARK:visitorDelegate 协议方法
    func visitorWillRegister() {
        print("come on")
    }
    
    func visitorWillLogin() {
        print("come in")
    }
    
    //视图控制器
    //viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
}

