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
        stack.distribution = .fillProportionally
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
        stack.spacing = 20
        stack.isLayoutMarginsRelativeArrangement = true
        stack.layoutMargins = UIEdgeInsets(top: 10, left: 20, bottom: 10, right: 20)
        stack.translatesAutoresizingMaskIntoConstraints = false
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
        
        contentLabel.heightAnchor.constraint(equalToConstant: 90).isActive = true
        
        //Container
        container.topAnchor.constraint(equalTo: contentView.topAnchor).isActive =  true
        container.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        container.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
    }
}
