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

    var presenter: MailLoginPresenterInterface!
    
    @IBOutlet weak private var messageLabel: UILabel!

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
}
