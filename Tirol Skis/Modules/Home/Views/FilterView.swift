//
//  FilterOptionView.swift
//  Tirol Skis
//
//  Created by Binaya Thapa Magar on 24/03/2024.
//

import UIKit

class FilterView: UIView {
    
    // MARK: - Properties
    
    var filterSectionUpdated: ((Int) -> Void)?
    var filterOption: FilterSection? {
        didSet {
            updateViews(with: filterOption!)
        }
    }
    
    // MARK: - UI Properties
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.font = .rudaBold(size: 16)
        label.adjustsFontSizeToFitWidth = true
        label.textColor = .black
        label.numberOfLines = 0
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var filterOptionsVSV: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 0
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()

    // MARK: - Initalizers
    
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
        addSubview(filterOptionsVSV)
        
        NSLayoutConstraint.activate([
            
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 4),
            
            filterOptionsVSV.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32),
            filterOptionsVSV.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 16),
            filterOptionsVSV.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            filterOptionsVSV.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16)
            
        ])
        
    }
    
    private func updateViews(with filterOption: FilterSection) {
        
        titleLabel.text = filterOption.title
        updateFilterOptionsVSV(with: filterOption)
        
    }
    
    private func updateFilterOptionsVSV(with filterOption: FilterSection) {
        
        filterOptionsVSV.arrangedSubviews.forEach { $0.removeFromSuperview() }
        
        filterOption.options.enumerated().forEach { [weak self] index, option in
            
            guard let self else { return }
                        
            let filterOptionView = FilterOptionView(filterOption: option)
            
            filterOptionView.checkboxChecked = {
                
                self.filterSectionUpdated?(index)
                
            }
            
            filterOptionsVSV.addArrangedSubview(filterOptionView)
            
        }
        
    }
    
}
