//
//  ResortDetailViewController.swift
//  Tirol Skis
//
//  Created by Ashish Augustine on 03/03/2024.
//

import UIKit
import CoreLocation

class ResortDetailViewController: UIViewController {
    
    // MARK: - Properties
    
    var resort: Resort? {
        didSet {
            updateViews()
        }
    }
    
    // MARK: - UI Properties
    
    private let eachDifficultyDistanceWidthMultiplier: CGFloat = 0.14
    
    private var activityIndicator: UIActivityIndicatorView = {
        
        let view = UIActivityIndicatorView(style: .large)
        view.color = GlobalConstants.Colors.primaryColor
        view.hidesWhenStopped = true
        
        return view
        
    }()
    
    private lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.showsVerticalScrollIndicator = false
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.backgroundColor = .white
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    private lazy var resortBGImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "logo")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.numberOfLines = 0
        label.font = .rudaBlack(size: 24)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var infoVSV: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 8
        stackView.backgroundColor = .white
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private lazy var detailsTitleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .rudaBold(size: 14)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var detailsDescriptionLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.numberOfLines = 5
        label.font = .medium14
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var readMoreButton: UIButton = {
        let button = UIButton()
        button.setTitle("Read more", for: .normal)
        button.titleLabel?.font = .rudaBlack(size: 14)
        button.setTitleColor(.lightGray, for: .normal)
        button.addTarget(
            self, action: #selector(readMoreButtonTapped), for: .touchUpInside
        )
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var difficultyDistanceStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.alignment = .leading
        stackView.spacing = 2
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private lazy var pistesDistanceLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .rudaBold(size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var altitudeLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .rudaBold(size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var snowDepthLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .rudaBold(size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var liftsLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .rudaBold(size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var priceLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .rudaBold(size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var bottomButtonView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.set(borderWidth: 1, of: UIColor(hex: "#E4E4E4"))
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var navigateButton: UIButton = {
        let button = UIButton()
        button.setTitle("Navigate",
                        for: .normal)
        button.titleLabel?.font = .rudaBlack(size: 16)
        button.setTitleColor(.white,
                             for: .normal)
        button.set(cornerRadius: 20)
        button.backgroundColor = GlobalConstants.Colors.primaryColor
        button.addTarget(self,
                         action: #selector(navigateButtonTapped),
                         for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    // MARK: - Lifecycle methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        layoutViews()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setupNavBar()
    }
    
    // MARK: - UI methods
    
    private func setupNavBar() {
        navigationController?.navigationBar.tintColor = GlobalConstants.Colors.primaryColor
        navigationItem.leftBarButtonItem = UIBarButtonItem(
            image: UIImage(systemName: "arrow.left"), style: .plain, target: self, action: #selector(backButtonTapped)
        )
    }
    
    private func layoutViews() {
        setupScrollView()
        setupBGImageView()
        setupTitleView()
        setupDescriptionViews()
        setupReadMoreButton()
        setupDifficultyDistanceHSV()
        setupPistesDistanceLabel()
        setupAltitudeLabel()
        setupSnowDepthLabel()
        setupLiftsLabel()
        setupPriceLabel()
        setupButtonView()
    }
    
    private func setupScrollView() {
        
        view.addSubview(scrollView)
        
        NSLayoutConstraint.activate([
            
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            scrollView.widthAnchor.constraint(equalTo: view.widthAnchor),
            
        ])
        
    }
    
    private func setupBGImageView() {
        
        scrollView.addSubview(resortBGImageView)
        
        NSLayoutConstraint.activate([
            
            resortBGImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            resortBGImageView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            resortBGImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            resortBGImageView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.3),
            
        ])
        
    }
    
    private func setupTitleView() {
        
        scrollView.addSubview(titleLabel)
        
        NSLayoutConstraint.activate([
            
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            titleLabel.topAnchor.constraint(equalTo: resortBGImageView.bottomAnchor, constant: 16),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
        ])
        
    }
    
    private func setupDescriptionViews() {
        
        scrollView.addSubview(infoVSV)
        infoVSV.addArrangedSubview(detailsTitleLabel)
        infoVSV.addArrangedSubview(detailsDescriptionLabel)
        
        NSLayoutConstraint.activate([
            
            infoVSV.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            infoVSV.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 16),
            infoVSV.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
        ])
        
    }
    
    private func setupReadMoreButton() {
        
        scrollView.addSubview(readMoreButton)
        
        NSLayoutConstraint.activate([
            
            readMoreButton.leadingAnchor.constraint(equalTo: infoVSV.leadingAnchor),
            readMoreButton.topAnchor.constraint(equalTo: infoVSV.bottomAnchor, constant: -6),
            
        ])
        
    }
    
    private func setupDifficultyDistanceHSV() {
        
        scrollView.addSubview(difficultyDistanceStackView)

        NSLayoutConstraint.activate([

            difficultyDistanceStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            difficultyDistanceStackView.topAnchor.constraint(equalTo: readMoreButton.bottomAnchor, constant: 4),
            difficultyDistanceStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
        ])
        
    }
    
    private func setupPistesDistanceLabel() {
        
        scrollView.addSubview(pistesDistanceLabel)

        NSLayoutConstraint.activate([

            pistesDistanceLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            pistesDistanceLabel.topAnchor.constraint(equalTo: difficultyDistanceStackView.bottomAnchor, constant: 16),
            pistesDistanceLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),

        ])
        
    }
    
    private func setupAltitudeLabel() {
        
        scrollView.addSubview(altitudeLabel)

        NSLayoutConstraint.activate([

            altitudeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            altitudeLabel.topAnchor.constraint(equalTo: pistesDistanceLabel.bottomAnchor, constant: 16),
            altitudeLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),

        ])
        
    }
    
    private func setupSnowDepthLabel() {
        
        scrollView.addSubview(snowDepthLabel)

        NSLayoutConstraint.activate([

            snowDepthLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            snowDepthLabel.topAnchor.constraint(equalTo: altitudeLabel.bottomAnchor, constant: 16),
            snowDepthLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),

        ])
        
    }
    
    private func setupLiftsLabel() {
        
        scrollView.addSubview(liftsLabel)
        
        NSLayoutConstraint.activate([
           
            liftsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            liftsLabel.topAnchor.constraint(equalTo: snowDepthLabel.bottomAnchor, constant: 16),
            liftsLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),

        ])
        
    }
    
    private func setupPriceLabel() {
        
        scrollView.addSubview(priceLabel)
        
        NSLayoutConstraint.activate([
           
            priceLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            priceLabel.topAnchor.constraint(equalTo: liftsLabel.bottomAnchor, constant: 16),
            priceLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            priceLabel.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: -(76 + 16)),

        ])
        
    }
    
    private func setupButtonView() {
        
        view.addSubview(bottomButtonView)
        bottomButtonView.addSubview(navigateButton)
        
        NSLayoutConstraint.activate([
            
            bottomButtonView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bottomButtonView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bottomButtonView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            bottomButtonView.heightAnchor.constraint(equalToConstant: 76),
            
            navigateButton.leadingAnchor.constraint(equalTo: bottomButtonView.leadingAnchor, constant: 16),
            navigateButton.trailingAnchor.constraint(equalTo: bottomButtonView.trailingAnchor, constant: -16),
            navigateButton.centerYAnchor.constraint(equalTo: bottomButtonView.centerYAnchor),
            navigateButton.heightAnchor.constraint(equalToConstant: 40)
            
        ])
        
    }
    
    private func updateViews() {
        
        guard let resort else { return }
        
        if !resort.image.isEmpty {
            resortBGImageView.image = UIImage(named: resort.image)
        }
        
        titleLabel.text = !resort.name.isEmpty ? resort.name : "Resort Name"
        
        detailsTitleLabel.text = !resort.detailsTitle.isEmpty ? resort.detailsTitle : ""
        
        if !resort.description.trimmed.isEmpty {
            readMoreButton.isHidden = false
            detailsDescriptionLabel.isHidden = false
            detailsDescriptionLabel.text = resort.description.trimmed
        } else {
            readMoreButton.isHidden = true
            detailsDescriptionLabel.isHidden = true
        }
        
        pistesDistanceLabel.text = resort.pistesDistance != 0 ? "Kilometres of pistes: \(resort.pistesDistance)km" : "Kilometres of pistes: N/A"
        
        altitudeLabel.text = !resort.altitude.isEmpty ? resort.altitude : "Altitude: N/A"
        
        snowDepthLabel.text = resort.snowDepthOnMount != 0 ? "Snow depth on mountain: \(resort.snowDepthOnMount)cm" : "Snow depth on mountain: N/A"

        liftsLabel.text = resort.liftsOpen != 0 && resort.liftsAvail != 0 ? "Lifts open: \(resort.liftsOpen)/\(resort.liftsAvail)" : "Lifts open: N/A"
        
        priceLabel.text = String(format: "Day ticket price: €%.2f", resort.price)
        
        updateDifficultyDistanceHSV(with: resort)
                
    }
    
    private func updateDifficultyDistanceHSV(with resort: Resort) {
        
        difficultyDistanceStackView.arrangedSubviews.forEach { $0.removeFromSuperview() }
        
        resort.difficulty.forEach {
            
            let difficultyDistanceView = DifficultyDistance(difficulty: $0)
            
            difficultyDistanceStackView.addArrangedSubview(difficultyDistanceView)
            
            difficultyDistanceView.widthAnchor.constraint(
                equalTo: view.widthAnchor,
                multiplier: eachDifficultyDistanceWidthMultiplier
            ).isActive = true
            
            difficultyDistanceView.backgroundColor = $0.level.color
            
        }
        
        difficultyDistanceStackView.addArrangedSubview(UIView())
        
    }
    
    private func updateButtonStatus(enable: Bool) {
        
        navigateButton.backgroundColor = enable ? GlobalConstants.Colors.primaryColor : .lightGray
        
    }
    
    // MARK: - Other methods
    
    private func setup() {
        view.backgroundColor = .white
    }
    
    private func showMapSelectionAlert() {
        
        guard let resort = resort else {
            return
        }
        
        let destinationName = resort.name
        
        guard let destinationEncoded = destinationName.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) else {
            return
        }
        
        let alert = UIAlertController(title: "Choose Map Service", message: "Which map service do you want to use?", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Apple Maps", style: .default, handler: { [weak self] _ in
            guard let self else { return }
            self.openAppleMaps(destinationEncoded: destinationEncoded)
        }))
        
        alert.addAction(UIAlertAction(title: "Google Maps", style: .default, handler: { [weak self] _ in
            guard let self else { return }
            self.openGoogleMaps(destinationEncoded: destinationEncoded)
        }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        present(alert, animated: true, completion: nil)
        
    }
    
    private func openAppleMaps(destinationEncoded: String) {
        
        let appleMapsURLString = "http://maps.apple.com/?daddr=\(destinationEncoded)"
        
        if let appleMapsURL = URL(string: appleMapsURLString), UIApplication.shared.canOpenURL(appleMapsURL) {
            UIApplication.shared.open(appleMapsURL, options: [:], completionHandler: nil)
        } else {
            openNavigationUsingBrowser(destinationEncoded: destinationEncoded)
        }
        
    }
    
    private func openGoogleMaps(destinationEncoded: String) {
        
        let googleMapsURLString = "comgooglemaps://?daddr=\(destinationEncoded)"
        
        if let googleMapsURL = URL(string: googleMapsURLString), UIApplication.shared.canOpenURL(googleMapsURL) {
            UIApplication.shared.open(googleMapsURL, options: [:], completionHandler: nil)
        } else {
            openNavigationUsingBrowser(destinationEncoded: destinationEncoded)
        }
        
    }
    
    private func openNavigationUsingBrowser(destinationEncoded: String) {
        let browserURLString = "https://www.google.com/maps/dir/?api=1&destination=\(destinationEncoded)"
        
        guard let browserURL = URL(string: browserURLString) else {
            return
        }
        
        UIApplication.shared.open(browserURL, options: [:], completionHandler: nil)
    }
    
    // MARK: - @objc methods
        
    @objc private func backButtonTapped() {
        navigationController?.popViewController(animated: true)
    }
    
    @objc private func readMoreButtonTapped() {
        readMoreButton.setTitle(
            readMoreButton.titleLabel?.text?.lowercased() ?? "" == "show less" ? "Read more" : "Show less",
            for: .normal
        )
        detailsDescriptionLabel.numberOfLines = readMoreButton.titleLabel?.text?.lowercased() ?? "" == "show less" ? 0 : 5
    }
    
    @objc private func navigateButtonTapped() {
        showMapSelectionAlert()
    }
    
}
