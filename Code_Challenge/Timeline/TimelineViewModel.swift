//
//  TimelineViewModel.swift
//  Code_Challenge
//
//  Created by Lotanna Igwe-Odunze on 10/29/19.
//  Copyright © 2019 JOOR. All rights reserved.
//

import UIKit

class TimelineViewModel {
    
    lazy var tweets: [Tweet] = TwitterClient.shared.loadTimeline()
    
    lazy var logoutButton = UIBarButtonItem(title: "Logout", style: .done, target: self, action: #selector(logoutClicked))
    
    @objc func logoutClicked() {
        TwitterClient.shared.logOut()
        if TwitterClient.shared.isLoggedIn.value == false {
            App.shared.navigate(to: .login)
        }
    }
}
