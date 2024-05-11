//
//  SceneDelegate.swift
//  Tirol Skis
//
//  Created by Binaya Thapa Magar on 03/02/2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    // MARK: - Properties
    
    var window: UIWindow?

    // MARK: - Methods
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(windowScene: windowScene)
        let containerVC = ContainerViewController()
        window?.makeKeyAndVisible()
        window?.rootViewController = containerVC
    }

}
