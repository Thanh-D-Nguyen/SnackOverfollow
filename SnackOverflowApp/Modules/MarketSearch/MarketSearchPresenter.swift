//
//  MarketSearchPresenter.swift
//  SnackOverflowApp
//
//  Created by タイン・グエン on 2023/01/22.
//
//

import Foundation

protocol MarketSearchPresenterInterface: AnyObject {
}

final class MarketSearchPresenter {

    private let interactor: MarketSearchInteractorInterface
    private let wireframe: MarketSearchWireframeInterface

    // MARK: - Lifecycle -

    init(
        interactor: MarketSearchInteractorInterface,
        wireframe: MarketSearchWireframeInterface
    ) {
        self.interactor = interactor
        self.wireframe = wireframe
    }
}

extension MarketSearchPresenter: MarketSearchPresenterInterface {
}
