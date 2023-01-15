//
//  CreateWireframe.swift
//  SnackOverflowApp
//
//  Created by タイン・グエン on 2023/01/14.
//  Copyright (c) 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//

import UIKit

protocol CreateWireframeInterface: AnyObject {
    
}

final class CreateWireframe: BaseWireframe<CreateViewController> {

    private let storyboard = UIStoryboard(name: "Create", bundle: nil)
    init() {
        let moduleViewController = storyboard.instantiateViewController(ofType: CreateViewController.self)
        super.init(viewController: moduleViewController)
        moduleViewController.title = MainTabbarName.create.title
        moduleViewController.tabBarItem = UITabBarItem(title: MainTabbarName.create.title, image: MainTabbarName.create.image, tag: MainTabbarName.create.rawValue)
        let interactor = CreateInteractor()
        let presenter = CreatePresenter(interactor: interactor, wireframe: self)
        moduleViewController.presenter = presenter
    }

}
extension CreateWireframe: CreateWireframeInterface {
}
