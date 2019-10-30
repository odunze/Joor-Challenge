//
//  TweetCell.swift
//  Code_Challenge
//
//  Created by Lotanna Igwe-Odunze on 10/29/19.
//  Copyright © 2019 JOOR. All rights reserved.
//

import UIKit

class TweetCell: UITableViewCell {
    
    //MARK: - Cell Subviews
    var userLabel = FlexLabel(type: .short)
    
    var contentLabel = FlexLabel(type: .long)
    
    lazy var textStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [userLabel, contentLabel])
        stack.axis = .vertical
        stack.spacing = 5
        return stack
    }()
    
    lazy var avatarView: UIImageView = {
        let view = UIImageView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.circleView(radius: 30)
        return view
    }()
    
    lazy var container: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [avatarView, textStack])
        stack.axis = .horizontal
        stack.isLayoutMarginsRelativeArrangement = true
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.layoutMargins = UIEdgeInsets(top: 10.0, left: 10.0, bottom: 10.0, right: 10.0)
        stack.spacing = 10
        return stack
    }()
    
    //MARK: - Initialisers
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(container)
        setConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Constraints
    func setConstraints() {
        //Profile Image
        avatarView.heightAnchor.constraint(equalToConstant: 60).isActive = true
        avatarView.widthAnchor.constraint(equalToConstant: 60).isActive = true
        
        //Container
        container.topAnchor.constraint(equalTo: contentView.topAnchor).isActive =  true
        container.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        container.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
    }
}
