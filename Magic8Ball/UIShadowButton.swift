//
//  UIShadowButton.swift
//  Magic8Ball
//
//  Created by Jérôme Desseaux on 24/04/2019.
//  Copyright © 2019 Jérôme Desseaux. All rights reserved.
//

import Foundation
import UIKit

class UIShadowButton: UIButton {
    override func draw(_ rect: CGRect) {
        updateProperties()
    }
    
    func updateProperties(){
        self.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 3)
        self.layer.shadowOpacity = 1.0
        self.layer.shadowRadius = 10.0
        self.layer.masksToBounds = false
    }
}
