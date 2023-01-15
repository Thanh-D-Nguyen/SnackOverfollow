//
//  CreatePresenter.swift
//  SnackOverflowApp
//
//  Created by タイン・グエン on 2023/01/14.
//  Copyright (c) 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//

import Foundation

protocol CreatePresenterInterface: AnyObject {
    
}

final class CreatePresenter {

    private let interactor: CreateInteractorInterface
    private let wireframe: CreateWireframeInterface

    // MARK: - Lifecycle -

    init(
        interactor: CreateInteractorInterface,
        wireframe: CreateWireframeInterface
    ) {
        self.interactor = interactor
        self.wireframe = wireframe
    }
}

extension CreatePresenter: CreatePresenterInterface {
}
