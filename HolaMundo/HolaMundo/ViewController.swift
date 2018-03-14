//
//  ViewController.swift
//  HolaMundo
//
//  Created by carlos on 7/3/18.
//  Copyright © 2018 carlos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var estado : Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func saluda() {
        if(estado == 0) {
         mensaje.text = "Hola mundo!"
        }
        else if(estado == 1) {
            mensaje.text = "Adios cansino!"
        }
        else {
            mensaje.text = "Ya vale de darle al botoncito"
        }
        
        estado += 1

    }
    
    @IBOutlet weak var mensaje: UILabel!
}

