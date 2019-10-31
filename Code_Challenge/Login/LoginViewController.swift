//
//  LoginViewController.swift
//  Code_Challenge
//
//  Created by Lotanna Igwe-Odunze on 10/29/19.
//  Copyright © 2019 JOOR. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    //MARK: - View Lifecycle Methods
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    override func viewDidLoad() {
        userField.delegate = self
        passField.delegate = self
        
        loginButton.addTarget(self, action: #selector(loginClicked), for: .touchUpInside)
        userField.addTarget(self, action: #selector(validateFields), for: .editingChanged)
        passField.addTarget(self, action: #selector(validateFields), for: .editingChanged)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    //MARK: - Subviews
    lazy var userField = EntryField(type: .username)
    lazy var passField = EntryField(type: .password)
    lazy var loginButton = StyledButton(enabled: false)
    lazy var logoView: UIImageView = {
        let view = UIImageView(frame: .zero)
        view.image = Theme.logo
        view.contentMode = .scaleAspectFit
        return view
    }()
    
    lazy var container: UIStackView = {
        let stack = UIStackView(frame: .zero)
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = Theme.medspace
        return stack
    }()
    
    //MARK: - Initialisers
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        view.backgroundColor = .twitterBlue

        container.addArrangedSubview(logoView)
        container.addArrangedSubview(userField)
        container.addArrangedSubview(passField)
        container.addArrangedSubview(loginButton)
        
        container.setCustomSpacing(40.0, after: logoView)

        view.addSubview(container)
        setConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Constraints
    func setConstraints() {
        container.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        container.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        container.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        container.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
    }
    
    //check that the fields aren't empty
    @objc func validateFields() {
        loginButton.isEnabled = userField.text?.count ?? 0 > 1 && passField.text?.count ?? 0 > 3
    }
    
    @objc func loginClicked(sender: UIButton!) {
        
        guard let username = userField.text, let password = passField.text else { return }
        
        TwitterClient.shared.logIn(username: username, password: password)
        
        if TwitterClient.shared.isLoggedIn.value == true {
            App.shared.navigate(to: .timeline) }
    }
}
