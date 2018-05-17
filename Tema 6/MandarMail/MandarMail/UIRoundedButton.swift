//
//  UIRoundButton.swift
//  MandarMail
//
//  Created by carlos on 17/5/18.
//  Copyright © 2018 carlos. All rights reserved.
//

import UIKit

@IBDesignable
class UIRoundedButton: UIButton {

    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var ancho_borde: CGFloat = 0 {
        didSet {
            self.layer.borderWidth = ancho_borde
        }
    }
    
    @IBInspectable var color_borde: UIColor = UIColor.clear {
        didSet {
            self.layer.borderColor = color_borde.cgColor
        }
    }
}
