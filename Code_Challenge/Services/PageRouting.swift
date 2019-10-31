//
//  PageRouting.swift
//  Code_Challenge
//
//  Created by Lotanna Igwe-Odunze on 10/31/19.
//  Copyright © 2019 JOOR. All rights reserved.
//

import UIKit

enum Page {
    case login
    case timeline
    
    var vc: UIViewController {
        switch self {
        case .login:
            let viewController = LoginViewController()
            return viewController
        case .timeline:
            let viewmodel = TimelineViewModel()
            let viewController = TimelineViewController(viewmodel: viewmodel)
            return viewController
        }
    }
}
