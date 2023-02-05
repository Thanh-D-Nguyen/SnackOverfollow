//
//  WelcomeMainViewController.swift
//  SnackOverflowApp
//
//  Created by タイン・グエン on 2023/01/12.
//

import UIKit
import FBSDKLoginKit

class WelcomeMainViewController: BaseViewController {
    
    var presenter: WelcomeMainPresenterInterface!
    @IBOutlet private weak var signInFBButton: UIButton!
    private let fbButton = FBLoginButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupUI()
        subscribe()
    }
    
    func setupUI() {
        view.addSubview(fbButton)
        view.sendSubviewToBack(fbButton)
        fbButton.translatesAutoresizingMaskIntoConstraints = false
        signInFBButton.topAnchor.constraint(equalTo: fbButton.topAnchor).isActive = true
        signInFBButton.leadingAnchor.constraint(equalTo: fbButton.leadingAnchor).isActive = true
        signInFBButton.trailingAnchor.constraint(equalTo: fbButton.trailingAnchor).isActive = true
        fbButton.delegate = self
    }
    
    func subscribe() {
        
    }
    
    @IBAction
    private func signInAction(_ sender: UIButton) {
        if sender.tag == SignInType.facebook.rawValue {
            fbButton.sendActions(for: .touchUpInside)
        } else {
            presenter.signInAction(sender.tag)
        }
    }
}

extension WelcomeMainViewController: LoginButtonDelegate {
    func loginButton(_ loginButton: FBLoginButton, didCompleteWith result: LoginManagerLoginResult?, error: Error?) {
        presenter.signInAction(SignInType.facebook.rawValue)
    }
    
    func loginButtonDidLogOut(_ loginButton: FBLoginButton) {
        
    }
}
