//
//  HomePresenter.swift
//  SnackOverflowApp
//
//  Created by タイン・グエン on 2023/01/14.
//  Copyright (c) 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//

import Foundation

protocol HomePresenterInterface: AnyObject {
    
}

final class HomePresenter {

    private let interactor: HomeInteractorInterface
    private let wireframe: HomeWireframeInterface

    init(
        interactor: HomeInteractorInterface,
        wireframe: HomeWireframeInterface
    ) {
        self.interactor = interactor
        self.wireframe = wireframe
    }
}

extension HomePresenter: HomePresenterInterface {
}
