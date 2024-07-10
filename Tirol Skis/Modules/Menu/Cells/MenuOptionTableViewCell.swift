//
//  MenuItemTableViewCell.swift
//  Tirol Skis
//
//  Created by Ashish Augustine on 23/04/2024.
//

import UIKit

class MenuOptionTableViewCell: UITableViewCell {

    // MARK: - Static properties
    
    static let cellIdentifier = "MenuItemTableViewCell"

    // MARK: - Properties
    
    var menuOption: MenuOption? {
        didSet {
            updateUI()
        }
    }
    
    // MARK: - UI Properties
    
    private lazy var optionImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.tintColor = GlobalConstants.Colors.primaryColor
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = GlobalConstants.Colors.primaryColor
        label.font = .rudaBold(size: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // MARK: - Lifecycle methods
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        layoutViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // MARK: - UI methods
    
    private func layoutViews() {
        
        contentView.backgroundColor = .white
        contentView.addSubview(optionImageView)
        contentView.addSubview(titleLabel)
        
        NSLayoutConstraint.activate([
            
            optionImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            optionImageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            optionImageView.heightAnchor.constraint(equalToConstant: 24),
            optionImageView.widthAnchor.constraint(equalToConstant: 24),
            
            titleLabel.leadingAnchor.constraint(equalTo: optionImageView.trailingAnchor, constant: 12),
            titleLabel.centerYAnchor.constraint(equalTo: optionImageView.centerYAnchor)
            
        ])
        
    }
    
    private func updateUI() {
        guard let menuOption else { return }
        
        titleLabel.text = menuOption.description
        optionImageView.image = menuOption.image
    }

}
