//
//  SegundaVista.swift
//  Ejercicio_1_multiples_ventanas
//
//  Created by carlos on 7/6/18.
//  Copyright © 2018 carlos. All rights reserved.
//

import UIKit

class SegundaVista: UIViewController {
    
    @IBOutlet weak var lbl_contador: UILabel!
    var txt_label = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbl_contador.text = txt_label
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
