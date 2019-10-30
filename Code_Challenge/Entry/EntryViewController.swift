//
//  EntryViewController.swift
//  Code_Challenge
//
//  Created by Lotanna Igwe-Odunze on 10/29/19.
//  Copyright © 2019 JOOR. All rights reserved.
//

import UIKit

class EntryViewController: UIViewController {
    
    lazy var userField: UITextField = {
        let field = UITextField(frame: .zero)
        return field
    }()
    
    lazy var passField: UITextField = {
        let field = UITextField(frame: .zero)
        return field
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton(frame: .zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .green
        button.setTitle("LOGIN HERE", for: .normal)
        button.addTarget(self, action: #selector(loginClicked), for: .touchUpInside)
        return button
    }()
    
    lazy var container: UIStackView = {
        let stack = UIStackView(frame: .zero)
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 10
        return stack
    }()
    
    @objc func loginClicked(sender: UIButton!) {
        
//        guard let username = userField.text, let password = passField.text else { return }
//
//        TwitterClient.shared.logIn(username: username, password: password)
        
        self.present(App.shared.navigation, animated: true, completion: nil)
    }
    
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        container.addArrangedSubview(userField)
        container.addArrangedSubview(passField)
        container.addArrangedSubview(loginButton)

        view.addSubview(container)
        
        view.backgroundColor = .twitterBlue
        
        setConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConstraints() {
        //Container
       
        container.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        container.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        container.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        container.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
    }
}
