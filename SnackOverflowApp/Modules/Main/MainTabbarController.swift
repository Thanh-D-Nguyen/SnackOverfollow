//
//  MainTabbarController.swift
//  SnackOverflowApp
//
//  Created by タイン・グエン on 2023/01/14.
//

import UIKit

class MainTabbarController: UITabBarController {
    override var childForStatusBarStyle: UIViewController? {
        self.navigationController
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
