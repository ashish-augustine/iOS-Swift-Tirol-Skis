//
//  DifficultyDistance.swift
//  Tirol Skis
//
//  Created by Binaya Thapa Magar on 06/03/2024.
//

import UIKit

class DifficultyDistance: UIView {

    // MARK: - UI Properties
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.font = .rudaBold(size: 12)
        label.adjustsFontSizeToFitWidth = true
        label.textColor = .white
        label.numberOfLines = 1
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // MARK: - Initalizers
    
    init(difficulty: Difficulty) {
        super.init(frame: .zero)
        prepareLayout()
        updateViews(with: difficulty)
    }
    
    init() {
        super.init(frame: .zero)
        prepareLayout()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - UI Methods
    
    private func prepareLayout() {
        
        translatesAutoresizingMaskIntoConstraints = false

        addSubview(titleLabel)
                
        NSLayoutConstraint.activate([
            
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 4),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
            titleLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -4),
            
        ])
        
    }

    private func updateViews(with difficulty: Difficulty) {
        titleLabel.text = difficulty.distance
    }
    
}
