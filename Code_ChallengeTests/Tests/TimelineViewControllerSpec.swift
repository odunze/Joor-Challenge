//
//  TimelineViewControllerSpec.swift
//  Code_ChallengeTests
//
//  Created by Lotanna Igwe-Odunze on 10/30/19.
//  Copyright © 2019 JOOR. All rights reserved.
//

@testable import Code_Challenge
import UIKit
import Nimble
import Quick

class TimelineViewControllerSpec: QuickSpec {
    
    override func spec() {
        var vc: TimelineViewController!
        var vm: TimelineViewModel!
        
        beforeEach {
            vm = TimelineViewModel()
            vc = TimelineViewController(viewmodel: vm)
        }
        
        describe("Data state") {
            context("tweets loaded in tableview") {
                beforeEach {
                    vc.tableView.register(TweetCell.self, forCellReuseIdentifier: vc.cellIdentifier)
                }
                it("loads the correct number of rows") {
                    expect(vc.tableView.numberOfRows(inSection: 0)).to(equal(vm.tweets.count))
                }
                
                it("displays the correct cell information") {
                    let testIndex = IndexPath(row: 8, section: 0)
                    let testCell = vc.tableView(vc.tableView, cellForRowAt: testIndex) as! TweetCell
                    expect(testCell.userLabel.text).to(equal(vm.tweets[testIndex.row].user))
                    expect(testCell.contentLabel.text).to(equal(vm.tweets[testIndex.row].content))
                    
                    expect(testCell.backgroundColor).to(equal(.twitterBlue))
                }
            }
        }
    }
}


