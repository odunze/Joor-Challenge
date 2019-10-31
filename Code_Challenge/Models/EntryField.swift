//
//  EntryField.swift
//  Code_Challenge
//
//  Created by Lotanna Igwe-Odunze on 10/30/19.
//  Copyright © 2019 JOOR. All rights reserved.
//

import UIKit

class EntryField: UITextField {
    
    var type: FieldType
    
    override func setNeedsLayout() {
        super.setNeedsLayout()
        
        autocapitalizationType = .none
        adjustsFontSizeToFitWidth = true
        
        borderStyle = .roundedRect
        backgroundColor = .white
        
        switch type {
        case .username:
            placeholder = "Enter your Username"
        case .password:
            placeholder = "Enter your Password"
        }
    }
    
    init(type: FieldType) {
        self.type = type
        super.init(frame: .zero)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

enum FieldType {
    case username
    case password
}
