//
//  ViewController.swift
//  EtiquetasPersonalizadas
//
//  Created by carlos on 13/4/18.
//  Copyright © 2018 carlos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Variables y funciones mias
    @IBAction func printar(_ sender: UIButton) {
        etiqueta.text = texto.text
    }
    
    @IBAction func quitar_teclado(_ sender: UITextField) {
        texto.resignFirstResponder()
    }
    
    @IBOutlet weak var etiqueta: UILabel!
    @IBOutlet weak var boton: UIButton!
    @IBOutlet weak var texto: UITextField!

}

