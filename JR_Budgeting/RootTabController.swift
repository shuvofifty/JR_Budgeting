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
        
        let homeController = HomeController(rootView: HomeViewStruct())
        homeController.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        
        viewControllers = [homeController]
    }
}
