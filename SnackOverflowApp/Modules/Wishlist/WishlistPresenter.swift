//
//  WishlistPresenter.swift
//  SnackOverflowApp
//
//  Created by タイン・グエン on 2023/01/14.
//  Copyright (c) 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//

import Foundation

protocol WishlistPresenterInterface: AnyObject {
    
}

final class WishlistPresenter {
    private let interactor: WishlistInteractorInterface
    private let wireframe: WishlistWireframeInterface

    init(
        interactor: WishlistInteractorInterface,
        wireframe: WishlistWireframeInterface
    ) {
        self.interactor = interactor
        self.wireframe = wireframe
    }
}

extension WishlistPresenter: WishlistPresenterInterface {
}
