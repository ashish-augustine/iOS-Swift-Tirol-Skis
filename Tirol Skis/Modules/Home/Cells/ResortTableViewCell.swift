//
//  ResortTableViewCell.swift
//  Tirol Skis
//
//  Created by Ashish Augustine on 03/02/2024.
//

import UIKit
import SDWebImage

class ResortTableViewCell: UITableViewCell {
    
    // MARK: - Static properties
    
    static let cellIdentifier = "ResortTableViewCell"
    
    // MARK: -  Properties
    
    var resort: Resort? {
        didSet {
            updateViews()
        }
    }
    
    // MARK: - UI Properties
    
    private let eachDifficultyDistanceWidthMultiplier: CGFloat = 0.14
    
    private lazy var resortImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.set(cornerRadius: 4)
        imageView.image = UIImage(named: "logo")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.numberOfLines = 0
        label.font = .rudaBlack(size: 22)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
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
    
    // MARK: - Initializers
    
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
        
        setupResortImageView()
        setupTitleLabel()
        setupDifficultyDistanceHSV()
        setupPistesDistanceLabel()
        setupAltitudeLabel()
        setupSnowDepthLabel()
        setupLiftsLabel()
    
    }
    
    private func setupResortImageView() {
        
        contentView.addSubview(resortImageView)
        
        NSLayoutConstraint.activate([

            resortImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            resortImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
            resortImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            resortImageView.heightAnchor.constraint(equalToConstant: 200),

        ])
        
    }
    
    private func setupTitleLabel() {
        
        contentView.addSubview(titleLabel)

        NSLayoutConstraint.activate([

            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            titleLabel.topAnchor.constraint(equalTo: resortImageView.bottomAnchor, constant: 16),
            titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),

        ])
        
    }
        
    private func setupDifficultyDistanceHSV() {
        
        contentView.addSubview(difficultyDistanceStackView)

        NSLayoutConstraint.activate([

            difficultyDistanceStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            difficultyDistanceStackView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 16),
            difficultyDistanceStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16)
            
        ])
        
    }
    
    private func setupPistesDistanceLabel() {
        
        contentView.addSubview(pistesDistanceLabel)

        NSLayoutConstraint.activate([

            pistesDistanceLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            pistesDistanceLabel.topAnchor.constraint(equalTo: difficultyDistanceStackView.bottomAnchor, constant: 16),
            pistesDistanceLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),

        ])
        
    }
    
    private func setupAltitudeLabel() {
        
        contentView.addSubview(altitudeLabel)

        NSLayoutConstraint.activate([

            altitudeLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            altitudeLabel.topAnchor.constraint(equalTo: pistesDistanceLabel.bottomAnchor, constant: 16),
            altitudeLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),

        ])
        
    }
    
    private func setupSnowDepthLabel() {
        
        contentView.addSubview(snowDepthLabel)

        NSLayoutConstraint.activate([

            snowDepthLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            snowDepthLabel.topAnchor.constraint(equalTo: altitudeLabel.bottomAnchor, constant: 16),
            snowDepthLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),

        ])
        
    }
    
    
    private func setupLiftsLabel() {
        
        contentView.addSubview(liftsLabel)
        
        NSLayoutConstraint.activate([
           
            liftsLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            liftsLabel.topAnchor.constraint(equalTo: snowDepthLabel.bottomAnchor, constant: 16),
            liftsLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            liftsLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16),

        ])
        
    }
    
    private func updateViews() {
        
        guard let resort else { return }
        
        titleLabel.text = resort.name
        
        updateDifficultyDistanceHSV(with: resort)
        
        if !resort.image.isEmpty {
            resortImageView.image = UIImage(named: resort.image)
        }
        
        pistesDistanceLabel.text = resort.pistesDistance != 0 ? "Kilometres of pistes: \(resort.pistesDistance)km" : "Kilometres of pistes: N/A"
        
        altitudeLabel.text = !resort.altitude.isEmpty ? resort.altitude : "Altitude: N/A"
        
        snowDepthLabel.text = resort.snowDepthOnMount != 0 ? "Snow depth on mountain: \(resort.snowDepthOnMount)cm" : "Snow depth on mountain: N/A"

        liftsLabel.text = resort.liftsOpen != 0 && resort.liftsAvail != 0 ? "Lifts open: \(resort.liftsOpen)/\(resort.liftsAvail)" : "Lifts open: N/A"


    }
    
    private func updateDifficultyDistanceHSV(with resort: Resort) {
        
        difficultyDistanceStackView.arrangedSubviews.forEach { $0.removeFromSuperview() }
        
        resort.difficulty.forEach {
            
            let difficultyDistanceView = DifficultyDistance(difficulty: $0)
            
            difficultyDistanceStackView.addArrangedSubview(difficultyDistanceView)
            
            difficultyDistanceView.widthAnchor.constraint(
                equalTo: contentView.widthAnchor,
                multiplier: eachDifficultyDistanceWidthMultiplier
            ).isActive = true
            
            difficultyDistanceView.backgroundColor = $0.level.color
            
        }
        
        difficultyDistanceStackView.addArrangedSubview(UIView())
    
    }
    
}
