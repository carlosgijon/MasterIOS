//
//  ViewController.swift
//  Ejercicio_1_multiples_ventanas
//
//  Created by carlos on 7/6/18.
//  Copyright © 2018 carlos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var boton_cambia_vista: UIButton!
    var contador: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func contar_veces(_ sender: Any) {
        contador += 1
    }
    
    // Siempre que se actua con varios Storyboards hay que utilizar esta funcion
    // para pasar datos entre vistas.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! SegundaVista
        destino.txt_label = "Número de veces visitado: \(contador)"
    }
    
}

