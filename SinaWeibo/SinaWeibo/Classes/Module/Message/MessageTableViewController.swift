//
//  MessageTableViewController.swift
//  SinaWeibo
//
//  Created by 崔翔 on 16/2/28.
//  Copyright © 2016年 torresgeekhome. All rights reserved.
//

import UIKit

class MessageTableViewController: BaseTableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        visitorLoginView?.setUIInfo("visitordiscover_image_message", title: "登录后，别人评论你的微博，发给你的消息，都会在这里收到通知")
    }
    
}
