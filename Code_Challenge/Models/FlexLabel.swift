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
    
    override func layoutSubviews() {
        super.layoutSubviews()
        preferredMaxLayoutWidth = 280.0
        lineBreakMode = .byWordWrapping

        switch type {
        case .short:
            numberOfLines = 1
        case .long:
            numberOfLines = 4
        }
    }
    
    init(type: Length) {
        self.type = type
        super.init(frame: .zero)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
