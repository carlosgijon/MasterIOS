//
//  ViewController.swift
//  UITableView
//
//  Created by carlos on 25/4/18.
//  Copyright © 2018 carlos. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    

    @IBOutlet var tabla: UITableView!
    var contenidoTabla: [String] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contenidoTabla.append("Paco")
        contenidoTabla.append("Pepe")
        contenidoTabla.append("Juan")
        contenidoTabla.append("Raul")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /* Determina el número de secciones de la tabla. Cada sección es similar a los bloques de filas que hay en las opciones de configuración de iOS. */
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Devolvemos la cantidad de elementos en la sección
        return contenidoTabla.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var datoString = contenidoTabla[indexPath.row]
        var celda: UITableViewCell = UITableViewCell()
        celda.textLabel?.text = datoString
        return celda
    }
    
    // Se encarga de realizar una acción cuando se selecciona una fila
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Obtenemos el String de la fila
        var datoString: String = contenidoTabla[indexPath.row]
        // Creamos el titulo
        var titulo: String = "Has pulsado la fila \(indexPath.row)"
        // Creamos el mensaje
        var mensaje: String = "No olvides de llamar a \(datoString)"
        // Creamos el controlador de la alerta
        var alertController = UIAlertController(title: titulo, message: mensaje, preferredStyle: UIAlertControllerStyle.alert)
        alertController.addAction(UIAlertAction(title: "Aceptar", style: UIAlertActionStyle.default,handler: nil))
        // Añadimos un botón que no hará nada
        self.present(alertController, animated: true, completion: nil)
    }


}

