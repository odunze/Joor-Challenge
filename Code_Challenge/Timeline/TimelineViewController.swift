//
//  TimelineViewController.swift
//  Code_Challenge
//
//  Created by Lotanna Igwe-Odunze on 10/29/19.
//  Copyright © 2019 JOOR. All rights reserved.
//

import UIKit

class TimelineViewController: UITableViewController {
    
    var vm: TimelineViewModel!
    
    let logoutButton = UIBarButtonItem(title: "Logout", style: .done, target: self, action: #selector(logoutClicked))
    
    @objc func logoutClicked() {
        TwitterClient.shared.logOut()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        App.shared.navigation.navigationItem.rightBarButtonItem = logoutButton
        
        tableView.register(TweetCell.self, forCellReuseIdentifier: "tweetCell")
        tableView.rowHeight = 85
        
        tableView.reloadData()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tweetCell", for: indexPath) as! TweetCell
        cell.userLabel.text = "Username"
        cell.contentLabel.text = "Hello darkness my old friend. I've come to play with you again. Because a softly sleeping."
        
        return cell
    }
    
    init(viewmodel: TimelineViewModel) {
        self.vm = viewmodel
        super.init(nibName: nil, bundle: nil)
        view.backgroundColor = .white
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
