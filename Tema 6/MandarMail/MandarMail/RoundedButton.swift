//
//  RoundedButton.swift
//  Insulina
//
//  Created by carlos on 10/5/18.
//  Copyright © 2018 carlos. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedButton: UIButton {
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var borderWith: CGFloat = 0 {
        didSet {
            self.layer.borderWidth = borderWith
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.clear {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }

}
