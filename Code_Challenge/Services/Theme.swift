//
//  Theme.swift
//  Code_Challenge
//
//  Created by Lotanna Igwe-Odunze on 10/31/19.
//  Copyright © 2019 JOOR. All rights reserved.
//

import UIKit

enum Theme {
    
    static var roundedCorner: CGFloat = 10.0
    
    static var smspace: CGFloat = 4.0
    
    static var medspace: CGFloat = 10.0

    static var lgSpace: CGFloat = 20.0
    
    static var titleFont = UIFont(name: "Helvetica-Bold", size: 18)
    
    static var placeholder: UIImage {
        let image = UIImage(named: "lotanna")
        return image!
    }
    
    static var logo: UIImage {
        let image = UIImage(named: "twitterlogo")
        return image!
    }
}
