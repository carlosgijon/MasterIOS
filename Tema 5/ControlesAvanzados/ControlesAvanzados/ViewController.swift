//
//  ViewController.swift
//  ControlesAvanzados
//
//  Created by carlos on 25/4/18.
//  Copyright © 2018 carlos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var slider1: UISlider!
    @IBOutlet var slider2: UISlider!
    @IBOutlet var sliderMedia: UISlider!
    @IBOutlet var boton: UISwitch!
    @IBOutlet var selectorColor: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func cambioColor(_ sender: UISegmentedControl) {
        var color: UIColor
        switch (selectorColor.selectedSegmentIndex) {
        case 0:
            color = UIColor.blue
        case 1:
            color = UIColor.green
        case 2:
            color = UIColor.red
        default:
            color = UIColor.blue
        }
        slider1.tintColor = color
        slider2.tintColor = color
        sliderMedia.tintColor = color
        
    }
    
    @IBAction func cambioSlider(_ sender: UISlider) {
        sliderMedia.setValue((slider1.value + slider2.value) / 2 , animated: true)
    }
    
    @IBAction func cambioSwitch(_ sender: UISwitch) {
        if(boton.isOn) {
            slider1.isEnabled = true
            slider2.isEnabled = true
            sliderMedia.isEnabled = true
        }
        else {
            slider1.isEnabled = false
            slider2.isEnabled = false
            sliderMedia.isEnabled = false
        }
    }
    
    
}

