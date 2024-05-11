//
//  UIStringExtension.swift
//  Tirol Skis
//
//  Created by Binaya Thapa Magar on 03/02/2024.
//

import UIKit

extension String {
    
    func makeLastTwoWordsBoldAndUnderlined() -> NSAttributedString {
        let attributedString = NSMutableAttributedString(string: self)
        
        let regex = try! NSRegularExpression(pattern: "(\\w+\\W+\\w+)[\\W\\n]*$", options: [])
        
        let matches = regex.matches(in: self, options: [], range: NSRange(location: 0, length: self.utf16.count))
        
        for match in matches {
            let lastTwoWordsRange = match.range(at: 1)
            attributedString.addAttribute(.font, value: UIFont.rudaBlack(size: 18), range: lastTwoWordsRange)
            attributedString.addAttribute(.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: lastTwoWordsRange)
        }
        
        return attributedString
    }
    
}
