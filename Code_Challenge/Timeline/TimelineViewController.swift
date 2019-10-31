//
//  TimelineViewController.swift
//  Code_Challenge
//
//  Created by Lotanna Igwe-Odunze on 10/29/19.
//  Copyright © 2019 JOOR. All rights reserved.
//

import UIKit

class TimelineViewController: UITableViewController {
    
    //MARK: - View Lifecycle Methods
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationItem.rightBarButtonItem = vm.logoutButton
        navigationItem.hidesBackButton = true
        title = "Timeline"
        
        tableView.register(TweetCell.self, forCellReuseIdentifier: cellIdentifier)
        tableView.rowHeight = 124
        tableView.reloadData()
    }
    
    //MARK: - Properties
    var vm: TimelineViewModel!
    lazy var cellIdentifier = "tweetCell"
    
    //MARK: - Table View Datasource Methods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vm.tweets.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! TweetCell
        
        switch indexPath.row % 2 == 0 {
        case true:
            cell.backgroundColor = .twitterBlue
            cell.userLabel.textColor = .white
            cell.contentLabel.textColor = .white

        default:
            cell.backgroundColor = .twitterLightBlue
            cell.userLabel.textColor = .white
            cell.contentLabel.textColor = .black
        }
        
        cell.userLabel.text = vm.tweets[indexPath.row].user
        cell.contentLabel.text = vm.tweets[indexPath.row].content
        cell.avatarView.image = Theme.placeholder
        
        return cell
    }
    
    //MARK: - Initialisers
    init(viewmodel: TimelineViewModel) {
        self.vm = viewmodel
        super.init(nibName: nil, bundle: nil)
        view.backgroundColor = .white
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
