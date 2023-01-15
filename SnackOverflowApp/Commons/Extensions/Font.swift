//
//  Font.swift
//  SnackOverflowApp
//
//  Created by タイン・グエン on 2023/01/09.
//

import UIKit

extension UIFont {
    
    static func sfProFont(ofSize size: CGFloat, weight: SFProFontWeight = .regular) -> UIFont {
        UIFont(name: weight.rawValue, size: size) ?? .systemFont(ofSize: size)
    }
    
    enum SFProFontWeight: String {
        case regular = "SFProDisplay-Regular"
        case bold = "SFProDisplay-Bold"
        case semibold = "SFProDisplay-Semibold"
        case textRegular = "SFProText-Regular"
    }
}
