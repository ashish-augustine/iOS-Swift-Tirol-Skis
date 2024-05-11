//
//  UIFont+Extension.swift
//  Tirol Skis
//
//  Created by Binaya Thapa Magar on 03/02/2024.
//

import UIKit

extension UIFont {
    
    // MARK: - Static Methods
    static func font(with size: CGFloat, family: FontFamily) -> UIFont {
        guard let requiredFont = UIFont(name: family.value, size: size) else {
            assertionFailure("Failed to get actual font")
            return UIFont.systemFont(ofSize: size)
        }
        return requiredFont
    }
    
    static func rudaBlack(size: CGFloat) -> UIFont {
        font(with: size, family: Ruda.black)
    }
    
    static func rudaBold(size: CGFloat) -> UIFont {
        font(with: size, family: Ruda.bold)
    }
    
    static func rudaMedium(size: CGFloat) -> UIFont {
        font(with: size, family: Ruda.medium)
    }
    
    static func rudaRegular(size: CGFloat) -> UIFont {
        font(with: size, family: Ruda.regular)
    }
    
    static var regular12: UIFont {
        rudaRegular(size: 12)
    }
    
    static var regular14: UIFont {
        rudaRegular(size: 14)
    }
    
    static var regular16: UIFont {
        rudaRegular(size: 16)
    }
    
    static var medium12: UIFont {
        rudaMedium(size: 12)
    }
    
    public static var medium14: UIFont {
        rudaMedium(size: 14)
    }
    
    static var medium16: UIFont {
        rudaMedium(size: 16)
    }
    
    static var title14: UIFont {
        rudaBold(size: 14)
    }
    
    static var rudaBlackTitle: UIFont {
        rudaBlack(size: 32)
    }
    
}

protocol FontFamily {
    
    // MARK: - Properties
    var value: String { get }
    
}

enum Ruda: FontFamily {
    
    case black
    case bold
    case extraBold
    case medium
    case regular
    case semiBold
    
    var value: String {
        
        switch self {
        case .black: return "Ruda-Black"
        case .bold: return "Ruda-Bold"
        case .extraBold: return "Ruda-ExtraBold"
        case .medium: return "Ruda-Medium"
        case .regular: return "Ruda-Regular"
        case .semiBold: return "Ruda-SemiBold"
        }
        
    }
    
}
