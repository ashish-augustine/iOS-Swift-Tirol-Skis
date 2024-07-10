//
//  GlobalConstantsExtension.swift
//  Tirol Skis
//
//  Created by Ashish Augustine on 11/04/2024.
//

import UIKit

extension GlobalConstants {
    
    struct ResortFilters {
        
        static let filterSections = [
            FilterSection(
                title: "Day ticket price",
                options: [
                    FilterOption(title: "< €35"),
                    FilterOption(title: "€35 - 45"),
                    FilterOption(title: "> €45")
                ]
            ),
            FilterSection(
                title: "Suitable for",
                options: [
                    FilterOption(title: "Beginners"),
                    FilterOption(title: "Intermediate"),
                    FilterOption(title: "Advanced"),
                    FilterOption(title: "Families"),
                    FilterOption(title: "Monoskiers")
                ]
            ),
            FilterSection(
                title: "Kilometres of slope",
                options: [
                    FilterOption(title: "< 50km"),
                    FilterOption(title: "50 - 100km"),
                    FilterOption(title: "> 100km")
                ]
            ),
            FilterSection(
                title: "Altitude",
                options: [
                    FilterOption(title: "< 1,000m"),
                    FilterOption(title: "1,000 - 1,500m"),
                    FilterOption(title: "> 1,500m")
                ]
            ),
            FilterSection(
                title: "Public transport access",
                options: [
                    FilterOption(title: "Accessible using public transport")
                ]
            ),
        ]
        
    }
    
    struct Colors {
        
        static let primaryColor = UIColor(hex: "#B51F1F")
        static let resortOpenColor = UIColor(hex: "#009E1C")
        
    }
    
    struct Network {
        
        static let creditsUrlString = "https://tyrolserver.onrender.com/"
        
    }
    
}
