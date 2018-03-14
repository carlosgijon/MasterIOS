import UIKit

var stringOpcional: String? = "Pedro"
if let nombre = stringOpcional {
    print("Hola \(nombre)")
}

var stringOpcionalVacio: String? = nil
if let nombreDos = stringOpcionalVacio {
    print("Hola \(nombreDos)")
}
else {
    print("hola desconocido")
}
