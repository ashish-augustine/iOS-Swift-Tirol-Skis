//
//  FilterOptionsViewController.swift
//  Tirol Skis
//
//  Created by Ashish Augustine on 28/02/2024.
//

import UIKit

enum FilterChoices: String {
    
    // Day ticket price options
    
    case lessThan35 = "< €35"
    case between35And45 = "€35 - 45"
    case moreThan45 = "> €45"
    
    // Suitable for options
    
    case beginners = "Beginners"
    case intermediate = "Intermediate"
    case advanced = "Advanced"
    case families = "Families"
    case monoskiers = "Monoskiers"
    
    // Kilometres of slope options
    
    case lessThan50km = "< 50km"
    case between50And100km = "50 - 100km"
    case moreThan100km = "> 100km"
    
    // Altitude options
    
    case lessThan1000m = "< 1,000m"
    case between1000And1500m = "1,000 - 1,500m"
    case moreThan1500m = "> 1,500m"
    
    // Public transport access options
    
    case publicTransport = "Accessible using public transport"
    
}


class FilterOptionsViewController: UIViewController {
    
    // MARK: - Properties
    
    private let filterSections = GlobalConstants.ResortFilters.filterSections
    private var tempFilterSections = GlobalConstants.ResortFilters.filterSections
    var applyFilters: (([FilterSection]) -> Void)?
    var appliedFilters: [FilterSection]? {
        didSet {
            updateTempFilterSections()
        }
    }
    
    // MARK: - UI Properties
    
    private lazy var containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 16
        view.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        view.clipsToBounds = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = HomeConstants.filterFloatingPanelTitle
        label.textColor = .black
        label.font = .rudaBlack(size: 24)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.showsVerticalScrollIndicator = false
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.backgroundColor = .white
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    private lazy var filterOptionsVSV: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 0
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private lazy var bottomButtonView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.set(borderWidth: 1, of: UIColor(hex: "#E4E4E4"))
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var applyButton: UIButton = {
        let button = UIButton()
        button.setTitle("Apply",
                        for: .normal)
        button.titleLabel?.font = .rudaBlack(size: 16)
        button.setTitleColor(.white,
                             for: .normal)
        button.set(cornerRadius: 20)
        button.backgroundColor = GlobalConstants.Colors.primaryColor
        button.addTarget(self,
                         action: #selector(applyButtonTapped),
                         for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var clearFiltersButton: UIButton = {
        let button = UIButton()
        button.setImage(
            UIImage(systemName: "trash"), for: .normal
        )
        button.addTarget(
            self, action: #selector(clearFiltersButtonTapped), for: .touchUpInside
        )
        button.tintColor = .black
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    // MARK: - Lifecyle methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    // MARK: - UI Methods
    
    private func layoutViews() {
        
        setupContainerView()
        setupTitleLabel()
        setupScrollView()
        setupFilterOptionsVSV()
        setupButtonView()
        setupClearFiltersButton()

    }
    
    private func setupContainerView() {
        
        view.backgroundColor = .none
        
        view.addSubview(containerView)

        NSLayoutConstraint.activate([
            
            containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            containerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor),

        ])
        
    }
    
    private func setupTitleLabel() {
        
        containerView.addSubview(titleLabel)
        
        NSLayoutConstraint.activate([
            
            titleLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 24),
            titleLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 16),
            titleLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -16)
            
        ])

    }
    
    private func setupScrollView() {
        
        containerView.addSubview(scrollView)
        
        NSLayoutConstraint.activate([
                        
            scrollView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            scrollView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 16),
            scrollView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            scrollView.widthAnchor.constraint(equalTo: view.widthAnchor)
            
        ])
        
    }
    
    private func setupFilterOptionsVSV() {
        
        scrollView.addSubview(filterOptionsVSV)
        
        NSLayoutConstraint.activate([
            
            filterOptionsVSV.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            filterOptionsVSV.topAnchor.constraint(equalTo: scrollView.topAnchor),
            filterOptionsVSV.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            filterOptionsVSV.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            filterOptionsVSV.widthAnchor.constraint(equalTo: view.widthAnchor)
            
        ])
        
    }
    
    private func setupButtonView() {
        
        containerView.addSubview(bottomButtonView)
        bottomButtonView.addSubview(applyButton)
        
        NSLayoutConstraint.activate([
            
            bottomButtonView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            bottomButtonView.topAnchor.constraint(equalTo: scrollView.bottomAnchor),
            bottomButtonView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            bottomButtonView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
            bottomButtonView.heightAnchor.constraint(equalToConstant: 76),
            
            applyButton.leadingAnchor.constraint(equalTo: bottomButtonView.leadingAnchor, constant: 16),
            applyButton.trailingAnchor.constraint(equalTo: bottomButtonView.trailingAnchor, constant: -16),
            applyButton.centerYAnchor.constraint(equalTo: bottomButtonView.centerYAnchor),
            applyButton.heightAnchor.constraint(equalToConstant: 40)
            
        ])
        
    }
    
    private func setupClearFiltersButton() {
        
        containerView.addSubview(clearFiltersButton)
        
        NSLayoutConstraint.activate([
            
            clearFiltersButton.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor),
            clearFiltersButton.centerYAnchor.constraint(equalTo: titleLabel.centerYAnchor)
            
        ])
        
    }
    
    private func updateFilterOptionsVSV() {
        
        filterOptionsVSV.arrangedSubviews.forEach { $0.removeFromSuperview() }
        
        tempFilterSections.enumerated().forEach { [weak self] sectionIndex, section in
            
            guard let self = self else { return }
            
            let filterOptionView = FilterView()
            
            filterOptionView.filterOption = section
            
            filterOptionView.filterSectionUpdated = { optionIndex in
                self.tempFilterSections[sectionIndex].options[optionIndex].isChecked.toggle()
            }
            
            filterOptionsVSV.addArrangedSubview(filterOptionView)
            
        }
        
    }
    
    func showClearFiltersAlert() {
        
        let alertController = UIAlertController(title: "Clear Filters", message: "Do you want to clear the filter options?", preferredStyle: .alert)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { _ in }
        
        let clearAction = UIAlertAction(title: "Clear", style: .destructive) { [weak self] _ in
            guard let self else { return }
            self.clearFilters()
        }
        
        alertController.addAction(cancelAction)
        alertController.addAction(clearAction)
        
        present(alertController, animated: true, completion: nil)
        
    }
    
    // MARK: - @objc Methods
    
    @objc private func applyButtonTapped() {
        applyFilters?(tempFilterSections)
        dismiss(animated: true)
    }
    
    @objc private func clearFiltersButtonTapped() {
        
        // Check if there are any applied filters and if any filter options are checked
        
        if let appliedFilters = appliedFilters {
            
            if appliedFilters.contains(where: { $0.options.contains(where: { $0.isChecked }) }) ||
                tempFilterSections.contains(where: { $0.options.contains(where: { $0.isChecked }) }) {
                showClearFiltersAlert()
            }
        }
        
    }
    
    // MARK: - Other methods
    
    private func setup() {
        layoutViews()
        updateFilterOptionsVSV()
    }
    
    private func updateTempFilterSections() {
        guard let appliedFilters, !appliedFilters.isEmpty else { return }
        tempFilterSections = appliedFilters
    }
    
    private func clearFilters() {
        for sectionIndex in 0..<tempFilterSections.count {
            for optionIndex in 0..<tempFilterSections[sectionIndex].options.count {
                tempFilterSections[sectionIndex].options[optionIndex].isChecked = false
            }
        }
        appliedFilters = tempFilterSections
        updateFilterOptionsVSV()
    }
    
}
