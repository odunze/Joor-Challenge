//
//  FlexLabel.swift
//  Code_Challenge
//
//  Created by Lotanna Igwe-Odunze on 10/29/19.
//  Copyright © 2019 JOOR. All rights reserved.
//

import UIKit

enum Length {
    case short
    case long
}

class FlexLabel: UILabel {
    var type: Length
    
    init(type: Length) {
        self.type = type
        super.init(frame: .zero)
        
        //Configure label
        lineBreakMode = .byWordWrapping
        textAlignment = .left
        translatesAutoresizingMaskIntoConstraints = false
        
        //Vary multi-line based on length.
        switch type {
        case .short:
            numberOfLines = 0
        case .long:
            numberOfLines = 1
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

