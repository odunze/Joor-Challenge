//
//  TimelineViewModel.swift
//  Code_Challenge
//
//  Created by Lotanna Igwe-Odunze on 10/29/19.
//  Copyright © 2019 JOOR. All rights reserved.
//

import UIKit

class TimelineViewModel {
    
    var tweets: [Tweet] = TwitterClient.shared.loadTimeline()
    
    
}
