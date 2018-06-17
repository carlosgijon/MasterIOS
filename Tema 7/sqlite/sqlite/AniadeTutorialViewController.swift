//
//  AniadeTutorialViewController.swift
//  sqlite
//
//  Created by carlos on 14/6/18.
//  Copyright © 2018 carlos. All rights reserved.
//

import UIKit

class AniadeTutorialViewController: UIViewController {
    @IBOutlet var txt_nombre_tutorial: UITextField!
    @IBOutlet var tab_sistema: UISegmentedControl!
    @IBOutlet var sw_terminado: UISwitch!
    @IBOutlet var btn_añadir: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Quitar el teclado en el campo de texto cuando acabe la edición
    @IBAction func edicion_terminada(_ sender: UITextField) {
        txt_nombre_tutorial.resignFirstResponder()
    }
    
    @IBAction func aniadirTutorial(_ sender: UIButton) {
        // Creamos el objet
        var tutorialInfo: tutorial = tutorial()
        // Rellenamos sus valores
        tutorialInfo.nombre = txt_nombre_tutorial.text!
        
        if(tab_sistema.selectedSegmentIndex == 0) {
            tutorialInfo.sistema = "Android"
        }
        else {
            tutorialInfo.sistema = "IOS"
        }
        
        if(sw_terminado.isOn) {
            tutorialInfo.terminado = true
        }
        else {
            tutorialInfo.terminado = false
        }
        
        var es_insertado = gestorDB.aniadeTutorial(tutorialInfo: tutorialInfo)
        
        if(es_insertado) {
            print("INSERT OK")
        }
        else {
            print("INSERT fallido")
        }
    }
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
