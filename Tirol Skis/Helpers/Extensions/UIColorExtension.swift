//
//  UIColor+Extension.swift
//  Foodmandu
//
//  Created by Manish Adhikari on 04/06/2021.
//  Copyright © 2021 Ekbana. All rights reserved.

import UIKit
extension UIColor {
    
    convenience init(hex: String) {
        self.init(hex: hex, alpha:1)
    }
    
    convenience init(hex: String, alpha: CGFloat) {
        var hexWithoutSymbol = hex
        if hexWithoutSymbol.hasPrefix("#") {
            hexWithoutSymbol = String(hex.dropFirst())
        }
        
        let scanner = Scanner(string: hexWithoutSymbol)
        var hexInt:UInt64 = 0x0
        scanner.scanHexInt64(&hexInt)
        
        var r:UInt64?, g:UInt64?, b:UInt64?
        switch (hexWithoutSymbol.count) {
        case 3: // #RGB
            r = ((hexInt >> 4) & 0xf0 | (hexInt >> 8) & 0x0f)
            g = ((hexInt >> 0) & 0xf0 | (hexInt >> 4) & 0x0f)
            b = ((hexInt << 4) & 0xf0 | hexInt & 0x0f)
            break;
        case 6: // #RRGGBB
            r = (hexInt >> 16) & 0xff
            g = (hexInt >> 8) & 0xff
            b = hexInt & 0xff
            break;
        default:
            // TODO:ERROR
            break;
        }
        
        self.init(
            red: (CGFloat(r ?? 0)/255),
            green: (CGFloat(g ?? 0)/255),
            blue: (CGFloat(b ?? 0)/255),
            alpha:alpha)
    }
}


extension UIColor {
    
    static let `default` = UIColor(hex: "#08497C")
    static let errorRed = UIColor(hex: "#A62122")
}
