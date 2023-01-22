//
//  MailLoginViewController.swift
//  SnackOverflowApp
//
//  Created by タイン・グエン on 2023/01/14.
//  Copyright (c) 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//

import UIKit

final class MailLoginViewController: BaseViewController {
    
    private let textFieldMailButtonTag = 1
    private let textFieldPassButtonTag = 2

    var presenter: MailLoginPresenterInterface!
    
    @IBOutlet weak private var messageLabel: UILabel!
    @IBOutlet weak private var mailTextField: UITextField!
    @IBOutlet weak private var passTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        subscribe()
    }
    
    func setupUI() {
        messageLabel.attributedText = presenter.warningAttributedText
        let tapGuesture = UITapGestureRecognizer()
        tapGuesture.addTarget(self, action: #selector(self.dismissKeyboard))
        self.view.addGestureRecognizer(tapGuesture)
        mailTextField.attributedPlaceholder = presenter.mailPlaceHolderAttributedText
        passTextField.attributedPlaceholder = presenter.passPlaceHolderAttributedText
    }
    
    func subscribe() { }
    
    @objc
    private func dismissKeyboard(_ gesture: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    @IBAction
    private func loginWithEmailAction() {
        presenter.loginWithEmail()
    }
    
    @IBAction
    private func displayKeyboardAction(_ sender: UIButton) {
        if sender.tag == textFieldMailButtonTag {
            mailTextField.becomeFirstResponder()
        } else if sender.tag == textFieldPassButtonTag {
            passTextField.becomeFirstResponder()
        }
    }
}
