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
    
    var homeView: UIViewController
    
    var navigation: UINavigationController
    
    func navigate(to destination: Page) {
        navigation.pushViewController(destination.vc, animated: true)
    }
    
    init() {
        homeView = Page.login.vc
        navigation = UINavigationController(rootViewController: homeView)
    }
}

enum Page {
    case login
    case timeline
    
    var vc: UIViewController {
        switch self {
        case .login:
            let viewController = EntryViewController()
            return viewController
        case .timeline:
            let viewController = TimelineViewController()
            return viewController
        }
    }
}