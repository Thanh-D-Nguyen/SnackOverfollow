//
//  WishlistWireframe.swift
//  SnackOverflowApp
//
//  Created by タイン・グエン on 2023/01/14.
//  Copyright (c) 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//

import UIKit

protocol WishlistWireframeInterface: AnyObject {
    
}

final class WishlistWireframe: BaseWireframe<WishlistViewController> {

    private let storyboard = UIStoryboard(name: "Wishlist", bundle: nil)

    init() {
        let moduleViewController = storyboard.instantiateViewController(ofType: WishlistViewController.self)
        super.init(viewController: moduleViewController)
        moduleViewController.title = MainTabbarName.wishlist.title
        moduleViewController.tabBarItem = UITabBarItem(title: MainTabbarName.wishlist.title, image: MainTabbarName.wishlist.image, tag: MainTabbarName.wishlist.rawValue)
        let interactor = WishlistInteractor()
        let presenter = WishlistPresenter(interactor: interactor, wireframe: self)
        moduleViewController.presenter = presenter
    }

}

// MARK: - Extensions -
extension WishlistWireframe: WishlistWireframeInterface {
}
