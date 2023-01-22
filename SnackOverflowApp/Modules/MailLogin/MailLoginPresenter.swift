//
//  MailLoginPresenter.swift
//  SnackOverflowApp
//
//  Created by タイン・グエン on 2023/01/14.
//  Copyright (c) 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//

import Foundation
import UIKit

protocol MailLoginPresenterInterface: AnyObject {
    var warningAttributedText: NSAttributedString { get }
    var mailPlaceHolderAttributedText: NSAttributedString { get }
    var passPlaceHolderAttributedText: NSAttributedString { get }

    func loginWithEmail()
}

class MailLoginPresenter {
    private let wireframe: MailLoginWireframeInterface
    private let interactor: MailLoginInteractorInterface
    
    var warningAttributedText: NSAttributedString {
        let warningText = NSLocalizedString("By clicking \"Create account\", I agree to SnackOverflow’s TOS and Privacy Policy.", comment: "")
        let attribuedTxt = NSMutableAttributedString(string: warningText)
        attribuedTxt.addAttribute(.link, value: "www.google.com", range: (warningText as NSString).range(of: "TOS"))
        attribuedTxt.addAttribute(.link, value: "www.yahoo.com", range: (warningText as NSString).range(of: "Privacy Policy."))
        return attribuedTxt
    }
    
    var mailPlaceHolderAttributedText: NSAttributedString {
        NSAttributedString(
            string: NSLocalizedString("mr.donuts@gmail.com", comment: ""),
            attributes: [.foregroundColor: UIColor(named: "clooneyColor") ?? UIColor.white])
    }
    
    var passPlaceHolderAttributedText: NSAttributedString {
        NSAttributedString(
            string: NSLocalizedString("password", comment: ""),
            attributes: [.foregroundColor: UIColor(named: "clooneyColor") ?? UIColor.white])
    }
    
    init(
        interactor: MailLoginInteractorInterface,
        wireframe: MailLoginWireframeInterface
    ) {
        self.interactor = interactor
        self.wireframe = wireframe
    }
}

extension MailLoginPresenter: MailLoginPresenterInterface {
    func loginWithEmail() {
        wireframe.showMain()
    }
}
