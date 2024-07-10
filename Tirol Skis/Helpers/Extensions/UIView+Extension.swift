//
//  UIView+Extension.swift
//  Foodmandu
//
//  Created by Ashish Augustine on 29/02/2024.
//  Copyright © 2021 Ekbana. All rights reserved.
//

import UIKit

extension UIView {
    
    // MARK: - Static properties
    static var identifier: String {
        "\(self)"
    }
    
    // MARK: - Methods
    func set(cornerRadius radius: CGFloat) {
        self.layer.cornerRadius = radius
        self.layer.masksToBounds = true
    }
    
    func set(border: UIColor) {
        self.layer.borderColor = border.cgColor;
    }
    
    func set(borderWidth: CGFloat) {
        self.layer.borderWidth = borderWidth
    }
    
    func set(borderWidth width: CGFloat, of color: UIColor) {
        self.set(border: color)
        self.set(borderWidth: width)
    }
    
    func rounded() {
        self.set(cornerRadius: self.frame.height/2)
    }
    
    func show(value: Bool) {
        self.isHidden = !value
    }
    
    func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
    
    func rotate(_ toValue: CGFloat, duration: CFTimeInterval = 0.2) {
        let animation = CABasicAnimation(keyPath: "transform.rotation")
        
        animation.toValue = toValue
        animation.duration = duration
        animation.isRemovedOnCompletion = false
//        animation.fillMode = .forwards

        self.layer.add(animation, forKey: nil)
    }
    
    func getStandardShadow() {
        self.layer.shadowColor = UIColor.darkGray.cgColor
        self.layer.shadowOpacity = 0.8
        self.layer.shadowOffset  = CGSize(width: 0, height: 0)
        self.layer.shadowRadius = 5
    }
    
    func shadow(offset: CGSize, color: UIColor = .black, radius: CGFloat, opacity: Float) {
        layer.masksToBounds = false
        layer.shadowOffset = offset
        layer.shadowColor = color.cgColor
        layer.shadowRadius = radius
        layer.shadowOpacity = opacity
        let backgroundCGColor = backgroundColor?.cgColor
        backgroundColor = nil
        layer.backgroundColor =  backgroundCGColor
    }
    
    func drawDottedLine(start p0: CGPoint, end p1: CGPoint, color: UIColor = UIColor.black) {
        let shapeLayer = CAShapeLayer()
        shapeLayer.strokeColor = color.cgColor
        shapeLayer.lineWidth = self.bounds.height
        shapeLayer.lineCap = .round
        shapeLayer.lineDashPattern = [0.5, 9] // 7 is the length of dash, 3 is length of the gap.
        let path = CGMutablePath()
        path.addLines(between: [p0, p1])
        shapeLayer.path = path
        self.layer.addSublayer(shapeLayer)
    }
    
    func elevate(_ elevation: Double, color: UIColor = UIColor.black.withAlphaComponent(0.8)) {
        if elevation == 0 {
            self.layer.shadowOpacity = 0
        }else {
            self.layer.masksToBounds = false
            self.layer.shadowColor = color.cgColor
            self.layer.shadowOffset = CGSize(width: 0, height: elevation)
            self.layer.shadowRadius = abs(CGFloat(elevation))
            self.layer.shadowOpacity = 0.24
        }
    }
    
}
