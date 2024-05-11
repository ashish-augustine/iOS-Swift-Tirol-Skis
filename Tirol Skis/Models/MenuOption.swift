//
//  MenuOption.swift
//  Tirol Skis
//
//  Created by Binaya Thapa Magar on 23/04/2024.
//

import UIKit

enum MenuOption: Int, CaseIterable, CustomStringConvertible {
    
    case about
    
    var description: String {
        switch self {
        case .about:
            return "About"
        }
    }
    
    var image: UIImage {
        switch self {
        case .about:
            return UIImage(systemName: "info.circle.fill") ?? UIImage()
        }
    }
    
}
