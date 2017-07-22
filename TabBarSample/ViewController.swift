//
//  ViewController.swift
//  TabBarSample
//
//  Created by 손성빈 on 2017. 7. 22..
//  Copyright © 2017년 seongbinson. All rights reserved.
//

import UIKit

class ViewController: UITabBarController, CustomTabBarDataSource, CustomTabBarDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.isHidden = true
        
        let customTabBar = CustomTabBar(frame: self.tabBar.frame)
        customTabBar.dataSource = self
        customTabBar.delegate = self
        customTabBar.setup()
        
        self.view.addSubview(customTabBar)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tabBarItemsInCustomTabBar(_ tabBarView: CustomTabBar) -> [UITabBarItem] {
        return tabBar.items!
    }
    
    func didSelectViewController(_ tabBarView: CustomTabBar, atIndex index: Int) {
        self.selectedIndex = index
    }


}

