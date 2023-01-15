//
//  AccountWireframe.swift
//  SnackOverflowApp
//
//  Created by タイン・グエン on 2023/01/14.
//  Copyright (c) 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//

import UIKit

protocol AccountWireframeInterface: AnyObject {
    
}

final class AccountWireframe: BaseWireframe<AccountViewController> {

    private let storyboard = UIStoryboard(name: "Account", bundle: nil)

    init() {
        let moduleViewController = storyboard.instantiateViewController(ofType: AccountViewController.self)
        super.init(viewController: moduleViewController)
        moduleViewController.title = MainTabbarName.account.title
        moduleViewController.tabBarItem = UITabBarItem(title: MainTabbarName.account.title, image: MainTabbarName.account.image, tag: MainTabbarName.account.rawValue)
        let interactor = AccountInteractor()
        let presenter = AccountPresenter(interactor: interactor, wireframe: self)
        moduleViewController.presenter = presenter
    }

}

extension AccountWireframe: AccountWireframeInterface {
}
