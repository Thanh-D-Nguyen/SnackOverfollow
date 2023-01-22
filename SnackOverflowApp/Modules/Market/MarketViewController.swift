//
//  MarketViewController.swift
//  SnackOverflowApp
//
//  Created by タイン・グエン on 2023/01/14.
//  Copyright (c) 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//

import UIKit

final class MarketViewController: BaseViewController {
    
    @IBOutlet weak private var searchTextField: UITextField!
    @IBOutlet weak private var marketTableView: UITableView!

    var presenter: MarketPresenterInterface!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        subscribe()
    }
    
    func setupUI() {
        searchTextField.textColor = UIColor(named: "teflonColor")
        searchTextField.attributedPlaceholder = presenter.searchPlaceHolderAttributedText
        searchTextField.leftView?.tintColor = UIColor(named: "clooneyColor")
        searchTextField.rightView?.tintColor = UIColor(named: "clooneyColor")
        searchTextField.backgroundColor = UIColor(named: "whiteyColor")
        
        let tapGuesture = UITapGestureRecognizer()
        tapGuesture.addTarget(self, action: #selector(self.dismissKeyboard))
        self.view.addGestureRecognizer(tapGuesture)
    }
    
    func subscribe() {
        
    }
    
    @objc
    private func dismissKeyboard(_ gesture: UITapGestureRecognizer) {
        view.endEditing(true)
    }
}
