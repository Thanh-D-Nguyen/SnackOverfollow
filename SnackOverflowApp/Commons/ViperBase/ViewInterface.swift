//
//  ViewInterface.swift
//  SnackOverflowApp
//
//  Created by タイン・グエン on 2023/01/09.
//

import SVProgressHUD

protocol ViewInterface: AnyObject {
    func showProgressHUD()
    func hideProgressHUD()
}

extension ViewInterface {
    
    func showProgressHUD() {
        SVProgressHUD.show()
    }
    
    func hideProgressHUD() {
        SVProgressHUD.dismiss()
    }
}
