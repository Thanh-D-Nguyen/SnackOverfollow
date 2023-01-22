//
//  MarketWireframe.swift
//  SnackOverflowApp
//
//  Created by タイン・グエン on 2023/01/14.
//
//

import UIKit

protocol MarketWireframeInterface: AnyObject {
    
    func openMarketSearch()
}

final class MarketWireframe: BaseWireframe<MarketViewController> {

    private let storyboard = UIStoryboard(name: "Market", bundle: nil)

    init() {
        let moduleViewController = storyboard.instantiateViewController(ofType: MarketViewController.self)
        super.init(viewController: moduleViewController)
        moduleViewController.title = MainTabbarName.market.title
        moduleViewController.tabBarItem = UITabBarItem(title: MainTabbarName.market.title, image: MainTabbarName.market.image, tag: MainTabbarName.market.rawValue)
        let interactor = MarketInteractor()
        let presenter = MarketPresenter(interactor: interactor, wireframe: self)
        moduleViewController.presenter = presenter
    }

}

extension MarketWireframe: MarketWireframeInterface {
    func openMarketSearch() {
        let vc = UIViewController()
        vc.view.backgroundColor = .white
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
