//
//  MarketSearchWireframe.swift
//  SnackOverflowApp
//
//  Created by タイン・グエン on 2023/01/22.
//
//

import UIKit

protocol MarketSearchWireframeInterface: AnyObject {
}

final class MarketSearchWireframe: BaseWireframe<MarketSearchViewController> {

    private let storyboard = UIStoryboard(name: "MarketSearch", bundle: nil)

    init() {
        let moduleViewController = storyboard.instantiateViewController(ofType: MarketSearchViewController.self)
        super.init(viewController: moduleViewController)
        let interactor = MarketSearchInteractor()
        let presenter = MarketSearchPresenter(interactor: interactor, wireframe: self)
        moduleViewController.presenter = presenter
    }

}

extension MarketSearchWireframe: MarketSearchWireframeInterface {
    
}
