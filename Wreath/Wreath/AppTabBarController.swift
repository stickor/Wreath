//
//  AppTabBarController.swift
//  Wreath
//
//  Created by 杨引 on 2018/10/9.
//  Copyright © 2018 Y. All rights reserved.
//

import UIKit

class AppTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let homeNav = APPNavController.init(rootViewController: HomeVC())
        homeNav.title = "首页"
        homeNav.tabBarItem.image = UIImage.init(named: "tabbar_home")
        homeNav.tabBarItem.selectedImage = UIImage.init(named: "tabbar_home_select")
        let orderNav = APPNavController.init(rootViewController: OrderVC())
        orderNav.title = "订单"
        orderNav.tabBarItem.image = UIImage.init(named: "tabbar_orders")
        orderNav.tabBarItem.selectedImage = UIImage.init(named: "tabbar_orders_select")
        let mineNav = APPNavController.init(rootViewController: MineVC())
        mineNav.title = "我的"
        mineNav.tabBarItem.image = UIImage.init(named: "tabbar_center")
        mineNav.tabBarItem.selectedImage = UIImage.init(named: "tabbar_center_select")
        self.viewControllers = [homeNav,orderNav,mineNav]
        
    }
    

    

}
