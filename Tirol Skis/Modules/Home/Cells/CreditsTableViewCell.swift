//
//  CreditsTableViewCell.swift
//  Tirol Skis
//
//  Created by Binaya Thapa Magar on 24/03/2024.
//

import UIKit

class CreditsTableViewCell: UITableViewCell {
    
    // MARK: - Static properties
    
    static let cellIdentifier = "CreditsTableViewCell"

    // MARK: - Properties
    
    var creditsMessage: String? {
        didSet {
            updateUI()
        }
    }
    
    // MARK: - UI Properties
    
    private lazy var dividerView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(hex: "#D5E0D5")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var creditsLabel: UILabel = {
        let label = UILabel()
        label.text = "Data source: https://www.tyrol.com/"
        label.textColor = .black
        label.font = .rudaBlack(size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // MARK: - Lifecycle methods
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style,
                   reuseIdentifier: reuseIdentifier)
        layoutViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // MARK: - UI methods
    
    private func layoutViews() {
        
        contentView.backgroundColor = .white
        
        contentView.addSubview(dividerView)
        contentView.addSubview(creditsLabel)
        
        NSLayoutConstraint.activate([
            
            dividerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            dividerView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
            dividerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            dividerView.heightAnchor.constraint(equalToConstant: 1),
            
            creditsLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            creditsLabel.topAnchor.constraint(equalTo: dividerView.bottomAnchor, constant: 16),
            creditsLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            creditsLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16),
            
        ])
        
    }
    
    private func updateUI() {
                
        if let creditsMessage, !creditsMessage.isEmpty {
            creditsLabel.text = creditsMessage
        } else {
            creditsLabel.text = "Data source: https://www.tyrol.com/"
        }
        
    }
    
}
