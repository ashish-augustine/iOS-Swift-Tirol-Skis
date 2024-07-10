//
//  AboutViewController.swift
//  Tirol Skis
//
//  Created by Ashish Augustine on 23/04/2024.
//

import UIKit

class AboutViewController: UIViewController {
    
    // MARK: - UI Properties
    
    private lazy var welcomeView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(hex: "#E6E6E6")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = HomeConstants.title
        label.textColor = .black
        label.font = .rudaBlackTitle
        label.textAlignment = .center
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var navTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "About \(HomeConstants.appTitle)"
        label.textColor = GlobalConstants.Colors.primaryColor
        label.font = .rudaBold(size: 16)
        label.textAlignment = .center
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
    
    private lazy var logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "bg")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = HomeConstants.titleDescription
        label.textColor = .black
        label.font = .rudaMedium(size: 18)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var detailsTitleLabel: UILabel = {
        let label = UILabel()
        label.text = HomeConstants.detailTitle
        label.textColor = .black
        label.font = .rudaMedium(size: 18)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var detailsDescriptionLabel: UILabel = {
        let label = UILabel()
        label.text = HomeConstants.detailDescription
        label.textColor = .black
        label.numberOfLines = 0
        label.font = .regular14
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var dividerView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(hex: "#D5E0D5")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var creditsLabel: UILabel = {
        let label = UILabel()
        label.text = """
        Image source: https://content.tirol.at/share/8D7DC1A0-13D5-45BE-B2B4E590D01361F2/
        
        To know more visit: https://content.tirol.at/account/dashboard/
        """
        label.numberOfLines = 0
        label.textColor = .black
        label.font = .rudaBlack(size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    // MARK: - Lifecycle methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupNavbar()
    }
    
    // MARK: - UI Methods
    
    private func setupNavbar() {
        navigationController?.navigationBar.tintColor = GlobalConstants.Colors.primaryColor
        navigationItem.titleView = navTitleLabel
        navigationItem.leftBarButtonItem = UIBarButtonItem(
            image: UIImage(systemName: "arrow.left"), style: .plain, target: self, action: #selector(backButtonTapped)
        )
    }
    
    private func layoutViews() {
        setupScrollView()
        setupImageView()
        setupWelcomeView()
        setupDetailViews()
        setupCreditsLabel()
    }
    
    private func setupScrollView() {
        
        view.addSubview(scrollView)
        
        NSLayoutConstraint.activate([
            
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            scrollView.widthAnchor.constraint(equalTo: view.widthAnchor)
            
        ])
        
    }
    
    private func setupImageView() {
        
        scrollView.addSubview(logoImageView)
        
        NSLayoutConstraint.activate([
            
            logoImageView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            logoImageView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            logoImageView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            logoImageView.widthAnchor.constraint(equalTo: view.widthAnchor)
            
        ])
        
    }
    
    private func setupWelcomeView() {
        
        scrollView.addSubview(welcomeView)
        welcomeView.addSubview(titleLabel)
        
        NSLayoutConstraint.activate([
            
            welcomeView.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 16),
            welcomeView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            welcomeView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            welcomeView.heightAnchor.constraint(greaterThanOrEqualTo: view.heightAnchor, multiplier: 0.08),
            
            titleLabel.leadingAnchor.constraint(equalTo: welcomeView.leadingAnchor, constant: 16),
            titleLabel.centerYAnchor.constraint(equalTo: welcomeView.centerYAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: welcomeView.trailingAnchor, constant: -16)
            
        ])
        
    }
    
    private func setupDetailViews() {
        
        scrollView.addSubview(descriptionLabel)
        scrollView.addSubview(detailsTitleLabel)
        scrollView.addSubview(detailsDescriptionLabel)
        
        NSLayoutConstraint.activate([
            
            descriptionLabel.topAnchor.constraint(equalTo: welcomeView.bottomAnchor, constant: 16),
            descriptionLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 16),
            descriptionLabel.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -16),
            
            detailsTitleLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 16),
            detailsTitleLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 16),
            detailsTitleLabel.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -16),
            
            detailsDescriptionLabel.topAnchor.constraint(equalTo: detailsTitleLabel.bottomAnchor, constant: 16),
            detailsDescriptionLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 16),
            detailsDescriptionLabel.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -16),
            
        ])
        
    }
    
    private func setupCreditsLabel() {
        
        scrollView.addSubview(dividerView)
        scrollView.addSubview(creditsLabel)
        
        NSLayoutConstraint.activate([
            
            dividerView.topAnchor.constraint(equalTo: detailsDescriptionLabel.bottomAnchor, constant: 16),
            dividerView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 16),
            dividerView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -16),
            dividerView.heightAnchor.constraint(equalToConstant: 1),
            
            creditsLabel.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 16),
            creditsLabel.topAnchor.constraint(equalTo: dividerView.bottomAnchor, constant: 16),
            creditsLabel.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -16),
            creditsLabel.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: -16),
            
        ])
        
    }
    // MARK: - Other methods
    
    private func setup(){
        view.backgroundColor = .white
        layoutViews()
    }
    
    // MARK: - @objc methods
    
    @objc private func backButtonTapped() {
        navigationController?.popViewController(animated: true)
    }
    
}
