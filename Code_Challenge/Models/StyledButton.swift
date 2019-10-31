//
//  StyledButton.swift
//  Code_Challenge
//
//  Created by Lotanna Igwe-Odunze on 10/30/19.
//  Copyright © 2019 JOOR. All rights reserved.
//

import UIKit

class StyledButton: UIButton {
    
    override func setNeedsLayout() {
        super.setNeedsLayout()
        
        layer.cornerRadius = 5.0
        
        switch state {
        case .normal:
            backgroundColor = .white
            setTitleColor(.twitterBlue, for: .normal)
            setTitle("LOGIN", for: .normal)
        case .disabled:
            backgroundColor = .lightGray
            setTitleColor(.darkGray, for: .disabled)
            setTitle("ENTER YOUR CREDENTIALS", for: .disabled)
        default:
            break
        }
    }
    
    init(enabled: Bool) {
        super.init(frame: .zero)
        isEnabled = enabled
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
