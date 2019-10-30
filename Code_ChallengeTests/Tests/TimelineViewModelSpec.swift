//
//  TimelineViewModelSpec.swift
//  Code_ChallengeTests
//
//  Created by Lotanna Igwe-Odunze on 10/30/19.
//  Copyright © 2019 JOOR. All rights reserved.
//

@testable import Code_Challenge
import UIKit
import Nimble
import Quick

class TimelineViewModelSpec: QuickSpec {
    
    override func spec() {
        var vm: TimelineViewModel!
        var client: TwitterClient!
        
        beforeEach {
            vm = TimelineViewModel()
            client = TwitterClient.shared
        }
        
        describe("Data") {
            context("tweets are loaded") {
                beforeEach {
                    
                }
                it("loads an array of tweets") {
                    expect(vm.tweets).toNot(beNil())
                }
                it("creates a logout bar button") {
                    expect(vm.logoutButton).toNot(beNil())
                }
            }
            
            context("Logout clicked") {
                beforeEach {
                    vm.logoutClicked()
                }
                it("toggles the login state") {
                    expect(client.isLoggedIn.value).to(beFalse())
                }
            }
        }
    }
}
