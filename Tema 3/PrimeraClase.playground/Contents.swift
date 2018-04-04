import UIKit

// Clase coche
class Coche {
    var puertas: Int
    var marca: String
    var modelo: String
    var color: String
    
    // Constructor
    init(marca: String, modelo: String, puertas: Int, color: String) {
        self.puertas = puertas  // El self es como el this de Java
        self.marca = marca
        self.modelo = modelo
        self.color = color
    }
    
    func conducir() {  // Un método
        print("El \(self.marca) \(self.modelo) de color \(self.color) esta siendo conducido")
    }
}

// Vamos a crear un array de coches y a conducirlos
var array_coches: [Coche] = []  // creamos el array vacio

// Creamos varios coches y los introducimos en el array con append()
array_coches.append(Coche(marca: "Audi", modelo: "A4", puertas: 5, color:"azul" ))
array_coches.append(Coche(marca: "Audi", modelo: "A3", puertas: 3, color:"verde" ))
array_coches.append(Coche(marca: "Renault", modelo: "19", puertas: 5, color:"rojo" ))
array_coches.append(Coche(marca: "Ferrari", modelo: "F430", puertas: 5, color:"amarillo" ))

// Vamos a conducir todos los coches que hemos creado
for coche in array_coches {
    coche.conducir()
}
