import UIKit
import WebKit

class ViewController: UIViewController,WKNavigationDelegate {

    @IBOutlet var visor_web: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Creamos un objeto URL que será la direccion web
        let url_google = URL(string:"https://www.google.com")!
        
        // Cargar el request en el visor
        visor_web.load(URLRequest(url: url_google))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    @IBAction func retroceder(_ sender: UIButton) {
        visor_web.goBack()
    }
    
    
    @IBAction func recargar(_ sender: UIButton) {
        visor_web.reload()
    }
    
    @IBAction func avaznzar(_ sender: UIButton) {
        visor_web.goForward()
    }
}

