//
//  ViewController.swift
//  UIImagePicker
//
//  Created by carlos on 7/6/18.
//  Copyright © 2018 carlos. All rights reserved.
//

import UIKit

class ViewController: UIViewController,
                      UINavigationControllerDelegate,
                      UIImagePickerControllerDelegate {
    
    @IBOutlet var boton: UIButton!
    @IBOutlet var imagen: UIImageView!
    
    // Se crea un seleccionador de imagen
    // creando un objeto de la clase UIImagePickerController
    var imagen_picker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func abrir_galeria(_ sender: Any) {
        // Se crea el delegate del seleccionador de imagen
        imagen_picker.delegate = self
        
        // Se asigna la propiedad sourceType para que abra el album
        // de fotos
        imagen_picker.sourceType = UIImagePickerControllerSourceType.savedPhotosAlbum
        
        // Con esta propiedad el usuario no puede editar la imagen
        imagen_picker.allowsEditing = false
        
        self.present(imagen_picker,animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        // Se crea una constante para la foto seleccionada de la galeria y se convierte UIImage
        let imagen_seleccionada = info[UIImagePickerControllerOriginalImage] as! UIImage
        
        // Con la propiedad image de la clase UIImageView se pone la constante que hemos creado antes
        imagen.image = imagen_seleccionada
        
        self.dismiss(animated: true, completion: nil)
    }
    
}
