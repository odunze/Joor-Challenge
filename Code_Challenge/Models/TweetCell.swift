//
//  TweetCell.swift
//  Code_Challenge
//
//  Created by Lotanna Igwe-Odunze on 10/29/19.
//  Copyright © 2019 JOOR. All rights reserved.
//

import UIKit

class TweetCell: UITableViewCell {
    lazy var userLabel: UILabel = {
        let label = UILabel(frame: .zero)
        
        return label
    }()
    
    lazy var contentLabel: UILabel = {
        let label = UILabel(frame: .zero)
        
        return label
    }()
    
    lazy var avatarView: UIImageView = {
        let view = UIImageView(frame: .zero)
        
        return view
    }()
}
