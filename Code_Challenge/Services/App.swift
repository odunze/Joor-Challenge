//
//  App.swift
//  Code_Challenge
//
//  Created by Lotanna Igwe-Odunze on 10/29/19.
//  Copyright © 2019 JOOR. All rights reserved.
//

import UIKit

class App {
    static let shared = App()
    
    var homeView: UIViewController //This makes it easy to switch out the app entrypoint.
    
    var navigation: UINavigationController
    
    func navigate(to destination: Page) {
        navigation.pushViewController(destination.vc, animated: true)
    }
    
    init() {
        navigation = UINavigationController(rootViewController: Page.login.vc)
        homeView = navigation
    }
}
