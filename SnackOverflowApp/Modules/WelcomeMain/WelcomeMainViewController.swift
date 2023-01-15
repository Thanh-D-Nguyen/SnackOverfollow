//
//  WelcomeMainViewController.swift
//  SnackOverflowApp
//
//  Created by タイン・グエン on 2023/01/12.
//

import UIKit

class WelcomeMainViewController: BaseViewController {
    
    var presenter: WelcomeMainPresenterInterface!
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupUI()
        subscribe()
    }
    
    func setupUI() {
        
    }
    
    func subscribe() {
        
    }
    
    @IBAction
    private func signInAction(_ sender: UIButton) {
        presenter.signInAction(sender.tag)
    }
}
