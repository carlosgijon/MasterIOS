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
    
    // FUNCIONES Y VARIABLES MIAS
    @IBOutlet weak var etiqueta: UILabel!
    @IBOutlet weak var boton: UIButton!
    @IBOutlet weak var texto: UITextField!
    
    @IBAction func pulsar_boton(_ sender: UIButton) {
        etiqueta.text = texto.text
    }
    
    @IBAction func edicion_terminada(_ sender: UITextField) {
        texto.resignFirstResponder()
    }
    
    
    
    
    
}

