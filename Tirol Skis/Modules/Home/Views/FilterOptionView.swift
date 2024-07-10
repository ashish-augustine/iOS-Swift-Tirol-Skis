//
//  FilterOptionView.swift
//  Tirol Skis
//
//  Created by Ashish Augustine on 24/03/2024.
//

import UIKit

class FilterOptionView: UIView {
    
    // MARK: - Properties
    
    private var filterOption: FilterOption?
    var checkboxChecked: (() -> Void)?

    // MARK: - UI Properties
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.font = .rudaMedium(size: 14)
        label.adjustsFontSizeToFitWidth = true
        label.textColor = .black
        label.numberOfLines = 0
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var checkboxImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "uncheckbox")
        imageView.isUserInteractionEnabled = true
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(checkBoxTapped))
        imageView.addGestureRecognizer(tapGesture)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    // MARK: - Initalizers
    
    init(filterOption: FilterOption) {
        super.init(frame: .zero)
        self.filterOption = filterOption
        prepareLayout()
        updateViews()
    }
    
    init() {
        super.init(frame: .zero)
        prepareLayout()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - UI methods
    
    private func prepareLayout() {
        
        translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(titleLabel)
        addSubview(checkboxImageView)
        
        NSLayoutConstraint.activate([
            
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 4),
            titleLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -12),
            
            checkboxImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            checkboxImageView.centerYAnchor.constraint(equalTo: titleLabel.centerYAnchor),
            checkboxImageView.heightAnchor.constraint(equalToConstant: 24),
            checkboxImageView.widthAnchor.constraint(equalToConstant: 24),
            
        ])
        
    }
    
    private func updateViews() {
        
        guard let filterOption else { return }
        
        titleLabel.text = filterOption.title
        checkboxImageView.image = filterOption.isChecked ? UIImage(named: "checkbox") : UIImage(named: "uncheckbox")
        
    }
    
    // MARK: - @objc methods
    
    @objc private func checkBoxTapped() {
        
        if let checkBoxImage = checkboxImageView.image {
            checkboxImageView.image = checkBoxImage == UIImage(named: "uncheckbox") ? UIImage(named: "checkbox") : UIImage(named: "uncheckbox")
            checkboxChecked?()
        }
        
    }

}
