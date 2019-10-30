//
//  LoginViewControllerSpec.swift
//  Code_ChallengeTests
//
//  Created by Lotanna Igwe-Odunze on 10/30/19.
//  Copyright © 2019 JOOR. All rights reserved.
//

@testable import Code_Challenge
import UIKit
import Nimble
import Quick

class LoginViewControllerSpec: QuickSpec {
    
    override func spec() {
        var vc: LoginViewController!
        var client: TwitterClient!

        beforeEach {
            vc = LoginViewController(nibName: nil, bundle: nil)
            client = TwitterClient.shared
            client.isLoggedIn.value = false
        }
        
        describe("Login flow") {
            context("username too short") {
                beforeEach {
                    vc.userField.text = "u"
                    vc.passField.text = "password"
                    vc.validateFields()
                }
                it("does not enable button") {
                    expect(vc.loginButton.isEnabled).to(beFalse())
                }
            }
            
            context("password too short") {
                beforeEach {
                    vc.userField.text = "user"
                    vc.passField.text = "p"
                    vc.validateFields()
                }
                it("does not enable button") {
                    expect(vc.loginButton.isEnabled).to(beFalse())
                }
            }
            
            context("incorrect username") {
                beforeEach {
                    vc.userField.text = "tester"
                    vc.passField.text = "password"
                    vc.validateFields()
                    vc.loginClicked(sender: vc.loginButton)
                }
                it("enables button") {
                    expect(vc.loginButton.isEnabled).to(beTrue())
                }
                it("fails login") {
                    expect(client.isLoggedIn.value).to(beFalse())
                }
            }
            
            context("incorrect password") {
                beforeEach {
                    vc.userField.text = "user"
                    vc.passField.text = "pass"
                    vc.validateFields()
                    vc.loginClicked(sender: vc.loginButton)
                }
                it("enables button") {
                    expect(vc.loginButton.isEnabled).to(beTrue())
                }
                it("fails login") {
                    expect(client.isLoggedIn.value).to(beFalse())
                }
            }
            
            context("correct username and password") {
                beforeEach {
                    vc.userField.text = "user"
                    vc.passField.text = "password"
                    vc.validateFields()
                    vc.loginClicked(sender: vc.loginButton)
                }
                it("enables button") {
                    expect(vc.loginButton.isEnabled).to(beTrue())
                }
                it("passes login") {
                    expect(client.isLoggedIn.value).to(beTrue())
                }
            }
        }
    }
}
