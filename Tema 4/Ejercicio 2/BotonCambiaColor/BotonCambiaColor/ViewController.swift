//
//  ViewController.swift
//  BotonCambiaColor
//
//  Created by carlos on 18/4/18.
//  Copyright © 2018 carlos. All rights reserved.
//

import UIKit

extension UIColor {
    public class var colorTurquesa: UIColor {
        return UIColor(named: "turquesa")!
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Cambiar_color(_ sender: Any) {

        switch(pulsaciones) {
        case 0:
            boton.backgroundColor = UIColor.colorTurquesa
            break
        case 1:
            boton.backgroundColor = UIColor.blue
            break
        case 2:
            boton.backgroundColor = UIColor.red
            break
        case 3:
            boton.backgroundColor = UIColor.magenta
            break
        case 4:
            boton.backgroundColor = UIColor.yellow
            break
        case 5:
            boton.backgroundColor = UIColor.orange
            break
        default:
            pulsaciones = -1;
            break
        }
        
        pulsaciones += 1
    }

    
    @IBOutlet weak var boton: UIButton!
    var pulsaciones: Int = 0;
}

