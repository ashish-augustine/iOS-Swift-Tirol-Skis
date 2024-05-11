//
//  Resort.swift
//  Tirol Ski Finder
//
//  Created by Binaya Thapa Magar on 21/01/2024.
//

import Foundation

enum ResortSuitability: String {
    
    case beginners = "Beginners"
    case intermediate = "Intermediate"
    case advanced = "Advanced"
    case families = "Families"
    case monoskiers = "Monoskiers"

}

struct Resort {
    
    let name: String
    let detailsTitle: String
    let description: String
    let image: String
    let pistesDistance: Int
    let altitude: String
    let altitudeLow: Double
    let altitudeHigh: Double
    let difficulty: [Difficulty]
    let snowDepthOnMount: Int
    let liftsOpen: Int
    let liftsAvail: Int
    let accessiblePublicTransport: Bool
    let suitableFor: [ResortSuitability]
    let price: Double
    
}
