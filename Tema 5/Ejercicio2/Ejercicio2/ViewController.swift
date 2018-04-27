//
//  ViewController.swift
//  Ejercicio2
//
//  Created by carlos on 27/4/18.
//  Copyright © 2018 carlos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var valor_slider: UILabel!
    @IBOutlet var slider: UISlider!
    @IBOutlet var segmented_porcentaje: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        valor_slider.text = "\(String(Int(slider.value * 100)))%"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func cambiar_valor(_ sender: UISlider) {
        let valor_numero: Int = Int(slider.value * 100)
        valor_slider.text = "\(String(valor_numero))%"
        
        if(valor_numero < 33) {
            segmented_porcentaje.selectedSegmentIndex = 0
            segmented_porcentaje.tintColor = UIColor.red
            
        }
        else if(valor_numero > 33 && valor_numero < 66) {
            segmented_porcentaje.selectedSegmentIndex = 1
            segmented_porcentaje.tintColor = UIColor.orange
        }
        else if(valor_numero > 66){
            segmented_porcentaje.selectedSegmentIndex = 2
            segmented_porcentaje.tintColor = UIColor.green
        }
    }
}

