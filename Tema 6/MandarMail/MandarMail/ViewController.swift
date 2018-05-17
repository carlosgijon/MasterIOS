//
//  ViewController.swift
//  MandarMail
//
//  Created by carlos on 17/5/18.
//  Copyright © 2018 carlos. All rights reserved.
//

import UIKit
import MessageUI

class ViewController: UIViewController, MFMailComposeViewControllerDelegate {
    
    @IBOutlet var btn_enviar: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func enviar_email(_ sender: Any) {
        // Se llama y se asigna el objeto mail que creamos en la funcion configuracion_email
        let mail_controller = configuracion_email()
        
        // Determina si se puede enviar el mensaje, si no, mostrará un error
        if(MFMailComposeViewController.canSendMail()) {
            self.present(mail_controller, animated: true, completion: nil)
        }
        else {
            self.mostrar_mensaje_error()
        }
    }
    
    func configuracion_email() -> MFMailComposeViewController {
        // Se crea un objeto de la clase MFMailComposeViewController
        let mail = MFMailComposeViewController()
        
        // Se crea el delegate para la vista. Se le asigna self
        mail.mailComposeDelegate = self
        
        // Campos del correo
        mail.setToRecipients(["carlosgijonfernandez@gmail.com"])
        mail.setSubject("Mandando mail desde mi app")
        mail.setMessageBody("<h1>Correo mandado desde la app</h1><p>Este correo ha sido mandado desde una app y en html</p>", isHTML: true)
        
        return mail

    }
    
    func mostrar_mensaje_error() {
        // Creamos un objeto UIAlertController
        let mensaje_error = UIAlertController(title:"Error en el envio", message: "Tu dispositivo no es capaz de mandar un mail, revisa la configuración y vuelve a probar",preferredStyle: .alert)
        
        // Presentamos la ventana
        self.present(mensaje_error, animated: true, completion: nil)
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

