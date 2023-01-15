//
//  MarketPresenter.swift
//  SnackOverflowApp
//
//  Created by タイン・グエン on 2023/01/14.
//  Copyright (c) 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//

import Foundation

protocol MarketPresenterInterface: AnyObject {
    
}

final class MarketPresenter {

    private let interactor: MarketInteractorInterface
    private let wireframe: MarketWireframeInterface

    init(
        interactor: MarketInteractorInterface,
        wireframe: MarketWireframeInterface
    ) {
        self.interactor = interactor
        self.wireframe = wireframe
    }
}
extension MarketPresenter: MarketPresenterInterface {
}
