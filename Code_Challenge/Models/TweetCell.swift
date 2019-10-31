//
//  TweetCell.swift
//  Code_Challenge
//
//  Created by Lotanna Igwe-Odunze on 10/29/19.
//  Copyright © 2019 JOOR. All rights reserved.
//

import UIKit

class TweetCell: UITableViewCell {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setConstraints()
    }
    
    //MARK: - Cell Subviews
    lazy var userLabel = FlexLabel(type: .short)
    lazy var contentLabel = FlexLabel(type: .long)
    
    lazy var textStack: UIStackView = {
        let stack = UIStackView(frame: .zero)
        stack.axis = .vertical
        stack.spacing = 4
        stack.distribution = .fill
        stack.isLayoutMarginsRelativeArrangement = true
        stack.layoutMargins = UIEdgeInsets(top: 4, left: 4, bottom: 4, right: 4)
        return stack
    }()
    
    lazy var avatarView: UIImageView = {
        let view = UIImageView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.circleView(radius: 40)
        return view
    }()
    
    lazy var container: UIStackView = {
        let stack = UIStackView(frame: .zero)
        stack.axis = .horizontal
        stack.spacing = 20
        stack.alignment = .top
        stack.isLayoutMarginsRelativeArrangement = true
        stack.layoutMargins = UIEdgeInsets(top: 10, left: 20, bottom: 6, right: 20)
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    //MARK: - Initialisers
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        textStack.addArrangedSubview(userLabel)
        textStack.addArrangedSubview(contentLabel)
        container.addArrangedSubview(avatarView)
        container.addArrangedSubview(textStack)
        addSubview(container)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Constraints
    func setConstraints() {
        //Profile Image
        avatarView.heightAnchor.constraint(equalToConstant: 80).isActive = true
        avatarView.widthAnchor.constraint(equalToConstant: 80).isActive = true
    }
}
