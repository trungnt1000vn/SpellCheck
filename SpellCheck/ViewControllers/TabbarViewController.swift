//
//  TabbarViewController.swift
//  SpellCheck
//
//  Created by Trung on 20/07/2023.
//  Copyright © 2023 Developers Usage. All rights reserved.
//

import UIKit

class TabbarViewController: UITabBarController {


   
    override func viewDidLoad() {
        super.viewDidLoad()
        addTopBorder()
        custommizeTabBarHeight()
    }
    
    func custommizeTabBarHeight() {
        let tabbarHeight: CGFloat = 80
        
        var tabBarFrame = self.tabBar.frame
        tabBarFrame.size.height = tabbarHeight
        tabBarFrame.origin.y = self.view.frame.size.height - tabbarHeight
        self.tabBar.frame = tabBarFrame
    }
    func addTopBorder(){
        let topBorder = UIView()
        topBorder.backgroundColor = UIColor.gray
        
        let borderHeight: CGFloat = 0.3
        let tabBarWidth = self.tabBar.frame.size.width
        topBorder.frame = CGRect(x: 0, y: 0, width: tabBarWidth, height: borderHeight)
        self.tabBar.addSubview(topBorder)
        
    }
}
