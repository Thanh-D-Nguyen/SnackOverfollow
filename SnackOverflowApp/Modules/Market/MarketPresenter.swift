//
//  MarketPresenter.swift
//  SnackOverflowApp
//
//  Created by タイン・グエン on 2023/01/14.
//
//

import UIKit

enum MarketSectionType: Int {
    case recentBundle = 0
    case topThreeBundle
    case nearbyFavorites
    
    static let count = 3
}

protocol MarketPresenterInterface: AnyObject {
    var searchPlaceHolderAttributedText: NSAttributedString { get }
}

final class MarketPresenter {

    private let interactor: MarketInteractorInterface
    private let wireframe: MarketWireframeInterface

    var searchPlaceHolderAttributedText: NSAttributedString {
        NSAttributedString(
            string: NSLocalizedString("Search", comment: ""),
            attributes: [.foregroundColor: UIColor(named: "clooneyColor") ?? UIColor.white])
    }
    
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
