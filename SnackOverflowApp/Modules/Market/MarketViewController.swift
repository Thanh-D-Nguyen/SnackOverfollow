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
        marketTableView.registerNib(cellClass: HomeSubSectionCell.self)
        searchTextField.delegate = self
        searchTextField.textColor = UIColor(named: "teflonColor")
        searchTextField.attributedPlaceholder = presenter.searchPlaceHolderAttributedText
        searchTextField.leftView?.tintColor = UIColor(named: "clooneyColor")
        searchTextField.rightView?.tintColor = UIColor(named: "clooneyColor")
        searchTextField.backgroundColor = UIColor(named: "whiteyColor")
    }
    
    func subscribe() {
        
    }
}

extension MarketViewController: UITextFieldDelegate {
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        presenter.openMarketSearch()
        return false
    }
}
