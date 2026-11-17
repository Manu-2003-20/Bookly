//
//  SceneDelegate.swift
//  Bookly
//
//  Created by Manuel Herrera Zeledon on 17/11/26.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(windowScene: windowScene)
        
        let homeViewController = UIViewController()
        homeViewController.view.backgroundColor = .systemBackground
        homeViewController.title = "Bookly"
        
        let navigationController = UINavigationController(rootViewController: homeViewController)
        
        window.rootViewController = navigationController
        
        self.window = window
        window.makeKeyAndVisible()
    }

}

