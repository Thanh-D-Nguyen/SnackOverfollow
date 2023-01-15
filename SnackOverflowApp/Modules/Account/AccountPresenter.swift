//
//  AccountPresenter.swift
//  SnackOverflowApp
//
//  Created by タイン・グエン on 2023/01/14.
//  Copyright (c) 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//

import Foundation

protocol AccountPresenterInterface: AnyObject {
    
}

final class AccountPresenter {

    private let interactor: AccountInteractorInterface
    private let wireframe: AccountWireframeInterface

    init(
        interactor: AccountInteractorInterface,
        wireframe: AccountWireframeInterface
    ) {
        self.interactor = interactor
        self.wireframe = wireframe
    }
}

extension AccountPresenter: AccountPresenterInterface {
}
