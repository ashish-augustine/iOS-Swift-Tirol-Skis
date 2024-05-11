//
//  ResortDetailViewController.swift
//  Tirol Skis
//
//  Created by Binaya Thapa Magar on 03/03/2024.
//


import UIKit

extension String {
    
    // MARK: - Properties
    var isEmail: Bool {
        let emailTest = NSPredicate(format:"SELF MATCHES %@",  "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}")
        return emailTest.evaluate(with: self)
    }
    
    var trimmed: String {
        return self.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
    }
    
    var isBlank: Bool {
        return (self.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines) == "")
    }
    
    var isValidPhoneNumber: Bool {
        if (isBlank || (count < 10)) {
            return false
        } else if(count >= 10) {
            return true
        }
        return true
    }
    
    var isNumber: Bool {
        return !isEmpty && rangeOfCharacter(from: CharacterSet.decimalDigits.inverted) == nil
    }
    
    var isHTMLString: Bool {
        if self.isEmpty {
            return false
        }
        return (self.range(of: "<(\"[^\"]*\"|'[^']*'|[^'\">])*>", options: .regularExpression) != nil)
    }
    
    var htmlToString: String? {
        guard let data = data(using: .utf8) else { return String() }
        do {
            return try NSAttributedString(data: data, options: [.documentType: NSAttributedString.DocumentType.html, .characterEncoding:String.Encoding.utf8.rawValue], documentAttributes: nil).string
        } catch {
            return String()
        }
    }
    
    // MARK: - Methods
    func strikeThrough(color: UIColor)  -> NSMutableAttributedString {
           let attributedText : NSMutableAttributedString =  NSMutableAttributedString(string: self)
           attributedText.addAttributes([
                           NSAttributedString.Key.strikethroughStyle: NSUnderlineStyle.single.rawValue,
               NSAttributedString.Key.strikethroughColor: color,
                           ], range: NSMakeRange(0, attributedText.length))
           return attributedText
       }
    
    func stringToDate(format: String = "yyyy-MM-dd'T'HH:mm:ss") -> Date? {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = format
            let newDate = dateFormatter.date(from: self)
            return newDate
        }

    func getWebsiteDomainFrom() -> String {
        let url = URL(string: self)
        guard let domain = url?.host else {return "error"}
        var modifiedDomain: String = ""
        var checkWWW: String = ""
        let checkIndexes = [0,1,2,3]
        for (index,char) in domain.enumerated() {
            if checkIndexes.contains(index){
                checkWWW.append(char)
            }
            if index > 3 && checkWWW.lowercased() == "www."  {
                modifiedDomain.append(char)
            }
        }
        if checkWWW.lowercased() == "www."{
            return modifiedDomain
        }
        else {
            return domain
        }
    }
    
    // MARK: - Subscript
    subscript(_ i: Int) -> String {
        let idx1 = index(startIndex, offsetBy: i)
        let idx2 = index(idx1, offsetBy: 1)
        return String(self[idx1..<idx2])
    }
    
    subscript (r: Range<Int>) -> String {
        let start = index(startIndex, offsetBy: r.lowerBound)
        let end = index(startIndex, offsetBy: r.upperBound)
        return String(self[start ..< end])
    }
    
    subscript (r: CountableClosedRange<Int>) -> String {
        let startIndex =  self.index(self.startIndex, offsetBy: r.lowerBound)
        let endIndex = self.index(startIndex, offsetBy: r.upperBound - r.lowerBound)
        return String(self[startIndex...endIndex])
    }
    
}
