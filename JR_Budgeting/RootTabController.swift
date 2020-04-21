//
//  RootTabController.swift
//  JR_Budgeting
//
//  Created by Shubroto Shuvo on 4/13/20.
//  Copyright © 2020 Shubroto Shuvo. All rights reserved.
//

import Foundation
import UIKit

class RootTabController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.unselectedItemTintColor = #colorLiteral(red: 0.2359012067, green: 0.2826001346, blue: 0.3679527044, alpha: 1)
        tabBar.barTintColor = #colorLiteral(red: 0.9528779387, green: 0.9529882073, blue: 0.9528284669, alpha: 1)
        
        let homeController = HomeController(rootView: HomeViewStruct())
        homeController.tabBarItem = UITabBarItem(title: "Home", image: #imageLiteral(resourceName: "homeMaterial"), tag: 0)
        
        let homeController1 = HomeController(rootView: HomeViewStruct())
        homeController1.tabBarItem = UITabBarItem(title: "Packets", image: #imageLiteral(resourceName: "appsMaterial"), tag: 1)
        
        let homeController2 = HomeController(rootView: HomeViewStruct())
        homeController2.tabBarItem = UITabBarItem(title: "Transaction", image: #imageLiteral(resourceName: "libraryAddMaterial"), tag: 2)
        
        let homeController3 = HomeController(rootView: HomeViewStruct())
        homeController3.tabBarItem = UITabBarItem(title: "Analysis", image: #imageLiteral(resourceName: "pieChartMaterial"), tag: 3)
        
        let homeController4 = HomeController(rootView: HomeViewStruct())
        homeController4.tabBarItem = UITabBarItem(title: "User", image: #imageLiteral(resourceName: "accountCircleMaterial"), tag: 4)
        
        viewControllers = [homeController, homeController1, homeController2, homeController3, homeController4]
    }
}
