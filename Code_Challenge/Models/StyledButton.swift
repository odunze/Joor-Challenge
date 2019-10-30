//
//  StyledButton.swift
//  Code_Challenge
//
//  Created by Lotanna Igwe-Odunze on 10/30/19.
//  Copyright © 2019 JOOR. All rights reserved.
//

import UIKit

class StyledButton: UIButton {
    
    func update() {
        switch state {
        case .normal:
            backgroundColor = .green
            setTitleColor(.black, for: .normal)
            setTitle("LOGIN HERE", for: .normal)
        case .disabled:
            backgroundColor = .lightGray
            setTitleColor(.darkGray, for: .disabled)
            setTitle("Enter More", for: .disabled)
        default:
            break
        }
    }
    
    init(enabled: Bool) {
        super.init(frame: .zero)
        isEnabled = enabled
        update()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
