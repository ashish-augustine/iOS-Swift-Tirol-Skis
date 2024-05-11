//
//  Difficulty.swift
//  Tirol Skis
//
//  Created by Binaya Thapa Magar on 03/03/2024.
//

import UIKit

enum ResortDifficulty {
    
    case easy
    case intermediate
    case difficult
    case skiTouringRoutes
    
    var color: UIColor {
        switch self {
        case .easy:
            return HomeConstants.DistanceDifficultyColors.easy
        case .intermediate:
            return HomeConstants.DistanceDifficultyColors.intermediate
        case .difficult:
            return HomeConstants.DistanceDifficultyColors.difficult
        case .skiTouringRoutes:
            return HomeConstants.DistanceDifficultyColors.skiTouringRoutes
        }
    }
    
}

struct Difficulty {
    
    let level: ResortDifficulty
    let distance: String
    
}
