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
        
        tableView.register(TweetCell.self, forCellReuseIdentifier: "tweetCell")
        tableView.rowHeight = 85
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return vm.tweets.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tweetCell", for: indexPath) as! TweetCell
        cell.userLabel.text = "Username"
        cell.contentLabel.text = "Hello darkness my old friend. I've come to play with you again. Because a softly sleeping."
        
        return cell
    }
    
}
