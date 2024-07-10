//
//  MenuController.swift
//  Tirol Skis
//
//  Created by Ashish Augustine on 23/04/2024.
//

import UIKit

class MenuViewController : UIViewController {
    
    // MARK: - Properties
    
    var delegate: HomeViewControllerDelegate?
    
    // MARK: - UI Properties
    
    private lazy var logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "logo")
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var dividerView: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray.withAlphaComponent(0.3)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
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
    
    // MARK: - Lifecycle methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    // MARK: - UI Methods
    
    private func layoutViews() {
        setupTopSection()
        setupTableView()
    }
    
    private func setupTopSection() {
        
        view.addSubview(logoImageView)
        view.addSubview(dividerView)
        
        NSLayoutConstraint.activate([
            
            logoImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            logoImageView.widthAnchor.constraint(equalToConstant: 100),
            logoImageView.heightAnchor.constraint(equalToConstant: 45),
            
            dividerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            dividerView.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 16),
            dividerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            dividerView.heightAnchor.constraint(equalToConstant: 1),
            
        ])
        
    }
    
    private func setupTableView() {

        view.addSubview(tableView)
        tableView.showsVerticalScrollIndicator = false
        tableView.register(
            MenuOptionTableViewCell.self, forCellReuseIdentifier: MenuOptionTableViewCell.cellIdentifier
        )
        
        NSLayoutConstraint.activate([
            
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.topAnchor.constraint(equalTo: dividerView.bottomAnchor, constant: 4),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            
        ])
        
    }
    
    private func setupCells(with indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MenuOptionTableViewCell.cellIdentifier, for: indexPath) as! MenuOptionTableViewCell
        cell.menuOption = MenuOption(rawValue: indexPath.row)
        return cell
    }
    
    private func rowSelected(at indexPath: IndexPath) {
        let menuOption = MenuOption(rawValue: indexPath.row)
        delegate?.handleMenuToggle(forMenuOption: menuOption)
        
    }
    
    // MARK: - Other methods
    
    private func setup(){
        view.backgroundColor = .white
        layoutViews()
    }
    
}

// MARK: - UITableViewDataSource extension

extension MenuViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        MenuOption.allCases.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        setupCells(with: indexPath)
    }
    
}

// MARK: - UITableViewDelegate extension

extension MenuViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        rowSelected(at: indexPath)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        60
    }
    
}
