//
//  HomeViewController.swift
//  Tirol Ski Finder
//
//  Created by Ashish Augustine on 21/01/2024.
//

import UIKit
import FloatingPanel

class HomeViewController: UIViewController {
    
    // MARK: - Enum
    
    enum ResortUpdatedFrom {
        
        case Search,
             Filter
        
    }
    
    // MARK: - Properties
    
    var delegate: HomeViewControllerDelegate?
    private var resorts = GlobalConstants.SkiResort.resorts
    private var filteredResorts = [Resort]()
    private var appliedFilters: [FilterSection] = []
    
    // MARK: - UI Properties
    
    private lazy var overlayView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.black.withAlphaComponent(0.5) // Adjust alpha as needed
        view.translatesAutoresizingMaskIntoConstraints = false
        view.isHidden = true // Initially hidden
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(overlayTapped))
        view.addGestureRecognizer(tapGesture)
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
    
    //SearchBar & Filter Views
    
    private lazy var searchFilterView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var searchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.placeholder = "Search Resorts"
        searchBar.delegate = self
        searchBar.searchBarStyle = .minimal
        searchBar.searchTextField.textColor = .black
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        return searchBar
    }()
    
    private lazy var filterButton: UIButton = {
        let button = UIButton()
        button.setImage(
            UIImage(named: "filter"), for: .normal
        )
        button.imageView?.contentMode = .scaleAspectFit
        button.tintColor = .black
        button.backgroundColor = .clear
        button.clipsToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        button.contentMode = .scaleAspectFill
        button.addTarget(
            self, action: #selector(filterButtonTapped), for: .touchUpInside
        )
        return button
    }()
    
    private lazy var searchOrFilterResultsLabel: UILabel = {
        let label = UILabel()
        label.text = "Search Results: 0 Ski Resorts"
        label.textColor = .black
        label.font = .rudaBlack(size: 16)
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(searchResultsLabelTapped))
        label.isUserInteractionEnabled = true
        label.addGestureRecognizer(tapGesture)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    //Ski Resorts Views
    
    private lazy var rootStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 0
        stackView.backgroundColor = .white
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.backgroundColor = .white
        tableView.separatorStyle = .none
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    private lazy var emptyResortRootView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        view.isHidden = true
        return view
    }()
    
    private lazy var emptyResortStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 20
        stackView.distribution = .fill
        stackView.alignment = .center
        stackView.backgroundColor = .clear
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private lazy var emptyResortImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "logo")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    // MARK: - Lifecycle methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        layoutViews()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setupNavBar()
        setupResortsData()
    }
    
    // MARK: - UI methods
    
    private func setupNavBar() {
        setupLeftNavBar()
        setupRightNavBar()
    }
    
    private func layoutViews() {
        setupScrollView()
        setupSearchFilterView()
        setupTableView()
        setupOverlayView()
    }
    
    func toggleOverlayVisibility(_ visible: Bool) {
        overlayView.isHidden = !visible
    }
    
    private func setupLeftNavBar() {
        let menuImage = UIImage(systemName: "line.3.horizontal")
        
        let menuBarButtonItem = UIBarButtonItem(
            image: menuImage, style: .plain, target: self, action: #selector(menuButtonTapped)
        )
        menuBarButtonItem.tintColor = GlobalConstants.Colors.primaryColor
        
        navigationItem.leftBarButtonItem = menuBarButtonItem
    }
    
    private func setupRightNavBar() {
        let logo = UIImage(named: "logo")
        
        let logoImageView = UIImageView(image: logo)
        logoImageView.contentMode = .scaleAspectFit
        logoImageView.widthAnchor.constraint(equalToConstant: 75).isActive = true
        
        let imageBarButton = UIBarButtonItem(customView: logoImageView)
        let flexibleSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        
        navigationItem.rightBarButtonItems = [flexibleSpace, imageBarButton]
    }
    
    private func setupOverlayView() {
        
        view.addSubview(overlayView)
        
        NSLayoutConstraint.activate([
            overlayView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            overlayView.topAnchor.constraint(equalTo: view.topAnchor),
            overlayView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            overlayView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
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
    
    //Search & Filter Setup
    
    private func setupSearchFilterView() {
        
        scrollView.addSubview(searchFilterView)
        searchFilterView.addSubview(searchBar)
        searchFilterView.addSubview(filterButton)
        searchFilterView.addSubview(searchOrFilterResultsLabel)
        
        NSLayoutConstraint.activate([
            
            searchFilterView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            searchFilterView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 16),
            searchFilterView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -16),
            
            searchBar.topAnchor.constraint(equalTo: searchFilterView.topAnchor),
            searchBar.leadingAnchor.constraint(equalTo: searchFilterView.leadingAnchor, constant: -8),
            searchBar.trailingAnchor.constraint(equalTo: filterButton.leadingAnchor, constant: -4),
            
            filterButton.centerYAnchor.constraint(equalTo: searchBar.centerYAnchor),
            filterButton.trailingAnchor.constraint(equalTo: searchFilterView.trailingAnchor),
            filterButton.widthAnchor.constraint(equalToConstant: 25),
            filterButton.heightAnchor.constraint(equalToConstant: 25),
            
            searchOrFilterResultsLabel.topAnchor.constraint(equalTo: searchBar.bottomAnchor, constant: 4),
            searchOrFilterResultsLabel.leadingAnchor.constraint(equalTo: searchFilterView.leadingAnchor),
            searchOrFilterResultsLabel.trailingAnchor.constraint(equalTo: searchFilterView.trailingAnchor, constant: -12),
            searchOrFilterResultsLabel.bottomAnchor.constraint(equalTo: searchFilterView.bottomAnchor),
            
        ])
    }
    
    private func setupTableView() {

        tableView.showsVerticalScrollIndicator = false

        tableView.register(
            ResortTableViewCell.self,
            forCellReuseIdentifier: ResortTableViewCell.cellIdentifier
        )
        
        tableView.register(
            CreditsTableViewCell.self,
            forCellReuseIdentifier: CreditsTableViewCell.cellIdentifier
        )
        
        scrollView.addSubview(rootStackView)
        rootStackView.addArrangedSubview(tableView)
        rootStackView.addArrangedSubview(emptyResortRootView)
        emptyResortRootView.addSubview(emptyResortStackView)
        emptyResortStackView.addArrangedSubview(emptyResortImageView)
        
        NSLayoutConstraint.activate([
            
            rootStackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            rootStackView.topAnchor.constraint(equalTo: searchFilterView.bottomAnchor, constant: 8),
            rootStackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            rootStackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            rootStackView.widthAnchor.constraint(equalTo: view.widthAnchor),
            
            tableView.heightAnchor.constraint(equalTo: view.heightAnchor, constant: -(25 + 4 + 8 + 20)),
            emptyResortRootView.heightAnchor.constraint(equalTo: view.heightAnchor, constant: -(25 + 4 + 8 + 20)),
            
            emptyResortStackView.centerXAnchor.constraint(equalTo: emptyResortRootView.centerXAnchor),
            emptyResortStackView.centerYAnchor.constraint(equalTo: emptyResortRootView.centerYAnchor),
            
            emptyResortImageView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.2),
            emptyResortImageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.6)
            
        ])
        
    }
    
    //Floating Panels
    
    private func showFilterFloatingPanel() {
        
        let floatingPanelController = FloatingPanelController()
        floatingPanelController.delegate = self
        floatingPanelController.contentMode = .fitToBounds
        floatingPanelController.isRemovalInteractionEnabled = true
        
        floatingPanelController.surfaceView.grabberHandle.isHidden = true
        floatingPanelController.backdropView.dismissalTapGestureRecognizer.isEnabled = true
        
        let filterOptionsVC = FilterOptionsViewController()
        filterOptionsVC.appliedFilters = appliedFilters
        
        filterOptionsVC.applyFilters = { [weak self] tempFilterSection in
            guard let self = self else { return }
            self.appliedFilters = tempFilterSection
            self.applyFilters(with: self.searchBar.text ?? "")
            self.filterButton.isUserInteractionEnabled = true
        }

        
        floatingPanelController.set(contentViewController: filterOptionsVC)
        
        present(floatingPanelController, animated: true)
        
    }
    
    private func setupCells(with indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: ResortTableViewCell.identifier, for: indexPath) as! ResortTableViewCell
        cell.resort = filteredResorts[indexPath.row]
        
        return cell
        
    }
    
    private func rowSelected(at indexPath: IndexPath) {
        
        if indexPath.row == filteredResorts.count {
            return
        }
        
        let resortDetailVC = ResortDetailViewController()
        resortDetailVC.resort = filteredResorts[indexPath.row]
        navigationController?.pushViewController(resortDetailVC, animated: true)
    }
    
    // MARK: - Other methods
    
    private func setup() {
        view.backgroundColor = .white
        filteredResorts = resorts
        searchOrFilterResultsLabel.text = "\(filteredResorts.count) Ski Resorts"
    }
    
    private func updateSearchResults(with searchText: String) {
        
        // Combine applied filters with search text to get filtered results
        
        var filteredResults = resorts
        
        if !appliedFilters.isEmpty {
            updateResortsData(with: appliedFilters)
            filteredResults = filteredResorts
        }
        
        if !searchText.isEmpty {
            filteredResults = filteredResults.filter { resort in
                return resort.name.lowercased().contains(searchText.lowercased())
            }
        }
        
        filteredResorts = filteredResults
        updateFilterOrSearchResultsLabel(from: .Search)
        tableView.reloadData()
        
    }
    
    private func updateFilterOrSearchResultsLabel(from: ResortUpdatedFrom) {
        
        let resultCount = filteredResorts.count
        let resultLabel: String
        
        if from == .Search {
            resultLabel = resultCount == 1 ? "Search Results: \(resultCount) Ski Resort found" : "Search Results: \(resultCount) Ski Resorts found"
        } else {
            resultLabel = resultCount == 1 ? "Filter Results: \(resultCount) Ski Resort found" : "Filter Results: \(resultCount) Ski Resorts found"
        }
        
        searchOrFilterResultsLabel.text = resultLabel
        
    }
    
    private func applyFilters(with searchText: String = "") {
        
        // Combine applied filters with search text to get filtered results
        var filteredResults = resorts
        
        if !appliedFilters.isEmpty {
            updateResortsData(with: appliedFilters)
            filteredResults = filteredResorts
        }
        
        if !searchText.trimmed.isEmpty {
            filteredResults = filteredResults.filter { resort in
                return resort.name.lowercased().contains(searchText.lowercased())
            }
        }
        
        filteredResorts = filteredResults
        updateFilterOrSearchResultsLabel(from: .Filter)
        tableView.reloadData()
    }

    
    private func updateResortsData(with filterSections: [FilterSection]) {
        let checkedFilterOptions = filterSections.flatMap { $0.options.filter { $0.isChecked } }
        
        if checkedFilterOptions.isEmpty {
            filteredResorts = resorts
        } else {
            filteredResorts = resorts.filter { resort in
                return meetsFilterCriteria(for: resort, with: checkedFilterOptions)
            }
        }
        
        tableView.reloadData()
    }

    private func meetsFilterCriteria(for resort: Resort, with filterOptions: [FilterOption]) -> Bool {
        return filterOptions.allSatisfy { filterOption in
            switch filterOption.title {
            case FilterChoices.lessThan35.rawValue:
                return resort.price < 35
            case FilterChoices.between35And45.rawValue:
                return resort.price >= 35 && resort.price <= 45
            case FilterChoices.moreThan45.rawValue:
                return resort.price > 45
            case FilterChoices.lessThan50km.rawValue:
                return resort.pistesDistance < 50
            case FilterChoices.between50And100km.rawValue:
                return resort.pistesDistance >= 50 && resort.pistesDistance <= 100
            case FilterChoices.moreThan100km.rawValue:
                return resort.pistesDistance > 100
            case FilterChoices.lessThan1000m.rawValue:
                return resort.altitudeLow < 1000 && resort.altitudeHigh < 1000
            case FilterChoices.between1000And1500m.rawValue:
                return resort.altitudeLow >= 1000 && resort.altitudeHigh <= 1500
            case FilterChoices.moreThan1500m.rawValue:
                return resort.altitudeLow > 1500 || resort.altitudeHigh > 1500
            case FilterChoices.beginners.rawValue:
                return resort.suitableFor.contains(.beginners)
            case FilterChoices.intermediate.rawValue:
                return resort.suitableFor.contains(.intermediate)
            case FilterChoices.advanced.rawValue:
                return resort.suitableFor.contains(.advanced)
            case FilterChoices.families.rawValue:
                return resort.suitableFor.contains(.families)
            case FilterChoices.monoskiers.rawValue:
                return resort.suitableFor.contains(.monoskiers)
            case FilterChoices.publicTransport.rawValue:
                return resort.accessiblePublicTransport
            default:
                return true
            }
        }
    }
    
    //Client reported a bug that occurs rarely where only 2 items are being loaded. This is a solution to that.
    private func setupResortsData() {
        resorts = GlobalConstants.SkiResort.resorts
        filteredResorts = resorts
        tableView.reloadData()
    }
    
    // MARK: - @objc methods
    
    @objc private func overlayTapped() {
        delegate?.handleMenuToggle(forMenuOption: nil)
    }
    
    @objc private func menuButtonTapped() {
        delegate?.handleMenuToggle(forMenuOption: nil)
    }
    
    @objc private func filterButtonTapped() {
        showFilterFloatingPanel()
        filterButton.isUserInteractionEnabled = false
    }
    
    @objc private func searchResultsLabelTapped() {
        tableView.scrollToRow(
            at: IndexPath(row: 0, section: 0),
            at: .top,
            animated: true
        )
    }
    
}

// MARK: - UITableViewDataSource extension

extension HomeViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        filteredResorts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        setupCells(with: indexPath)
    }
    
}

// MARK: - UITableViewDelegate extension

extension HomeViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        rowSelected(at: indexPath)
    }
    
}

// MARK: - UISearchBarDelegate extension

extension HomeViewController: UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        updateSearchResults(with: searchText.trimmed)
        
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
                
        searchBar.resignFirstResponder()
        
        guard let searchText = searchBar.text?.trimmed else { return }
                
        updateSearchResults(with: searchText)
        
    }
    
}

// MARK: - FloatingPanelControllerDelegate

extension HomeViewController: FloatingPanelControllerDelegate {
    
    func floatingPanelDidRemove(_ fpc: FloatingPanelController) {
        print("Floating panel removed")
        filterButton.isUserInteractionEnabled = true
    }
    
}
