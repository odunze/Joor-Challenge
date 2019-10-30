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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationItem.rightBarButtonItem = vm.logoutButton
        
        tableView.register(TweetCell.self, forCellReuseIdentifier: "tweetCell")
        tableView.rowHeight = 120
        tableView.reloadData()
    }
    
    //MARK: - Table View Datasource Methods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vm.tweets.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tweetCell", for: indexPath) as! TweetCell
        
        cell.userLabel.text = vm.tweets[indexPath.row].user
        cell.contentLabel.text = vm.tweets[indexPath.row].content
        
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
