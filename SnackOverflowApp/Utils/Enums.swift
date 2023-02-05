//
//  Enums.swift
//  SnackOverflowApp
//
//  Created by タイン・グエン on 2023/01/09.
//

import UIKit

// Welcome
enum WelcomeType {
    case show, main, emailLogin, signUpLogin
}
enum SignInType: Int {
    case signUpWithMail = 1
    case apple
    case google
    case facebook
}

enum MainTabbarName: Int {
    case home
    case market
    case create
    case account
    case wishlist
    
    var title: String {
        switch self {
            case .home:
                return NSLocalizedString("Home", comment: "")
            case .market:
                return NSLocalizedString("Market", comment: "")
            case .create:
                return NSLocalizedString("Create", comment: "")
            case .account:
                return NSLocalizedString("Account", comment: "")
            case .wishlist:
                return NSLocalizedString("Wishlist", comment: "")
        }
    }
    
    var image: UIImage? {
        switch self {
            case .home:
                return UIImage(named: "icHome")
            case .market:
                return UIImage(named: "icMarket")
            case .create:
                return UIImage(named: "icCreate")
            case .account:
                return UIImage(named: "icUser")
            case .wishlist:
                return UIImage(named: "icWishlist")
        }
    }
}
