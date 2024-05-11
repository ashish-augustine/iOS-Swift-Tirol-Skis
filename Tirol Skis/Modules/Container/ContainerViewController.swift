 //
//  ContainerController.swift
//  Tirol Skis
//
//  Created by Binaya Thapa Magar on 23/04/2024.
//

import UIKit

class ContainerViewController: UIViewController {
    
    // MARK: - Properties
    
    private var menuController: MenuViewController!
    private var centerController: UINavigationController!
    private var isExpanded = false
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        .darkContent
    }
    
    override var preferredStatusBarUpdateAnimation: UIStatusBarAnimation {
        .slide
    }
    
    override var prefersStatusBarHidden: Bool {
        isExpanded
    }
    
    // MARK: - Lifecycle methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    // MARK: - Handlers
    
    private func configureHomeController() {
        let homeViewContoller = HomeViewController()
        homeViewContoller.delegate = self
        centerController = UINavigationController(rootViewController: homeViewContoller)
        
        view.addSubview(centerController.view)
        addChild(centerController)
        centerController.didMove(toParent: self)
    }
    
    private func configureMenuController() {
        if menuController == nil {
            
            menuController = MenuViewController()
            menuController.delegate = self
            view.insertSubview(menuController.view, at: 0)
            
            addChild(menuController)
            menuController.didMove(toParent: self)
            
        }
    }
    
    private func updateMenuControllerVisibility(shouldExpand: Bool, menuOption: MenuOption?) {
        UIView.animate(
            withDuration: 0.5,
            delay: 0,
            usingSpringWithDamping: 0.8,
            initialSpringVelocity: 0,
            options: .curveEaseInOut,
            animations: { [weak self] in
                guard let self = self else { return }
                
                self.centerController.view.frame.origin.x = shouldExpand ? self.centerController.view.frame.width - 80 : 0

                if let homeViewController = self.centerController.topViewController as? HomeViewController {
                    homeViewController.toggleOverlayVisibility(shouldExpand)
                }
            }, completion: { [weak self] _ in
                guard let self = self, let menuOption = menuOption else { return }
                self.didSelectMenuOption(menuOption)
            }
        )
        animateStatusBar()
    }

    
    private func animateStatusBar() {
        UIView.animate(
            withDuration: 0.3,
            delay: 0,
            usingSpringWithDamping: 0.8,
            initialSpringVelocity: 0,
            options: .curveEaseInOut, animations: { [weak self] in
                guard let self else { return }
                self.setNeedsStatusBarAppearanceUpdate()
            },
            completion: nil
        )
    }
    
    private func didSelectMenuOption(_ option: MenuOption) {
        switch option {
        case .about:
            pushAboutViewController()
        }
    }
    
    private func pushAboutViewController() {
        let aboutVC = AboutViewController()
        centerController.pushViewController(aboutVC, animated: true)
    }
    
    // MARK: - Other methods
    
    private func setup(){
        configureHomeController()
    }
    
}

// MARK: - HomeViewControllerDelegate

extension ContainerViewController: HomeViewControllerDelegate {
    
    func handleMenuToggle(forMenuOption menuOption: MenuOption?) {
        if !isExpanded {
            configureMenuController()
        }
        
        isExpanded.toggle()
        updateMenuControllerVisibility(
            shouldExpand: isExpanded, menuOption: menuOption
        )
    }
    
}
