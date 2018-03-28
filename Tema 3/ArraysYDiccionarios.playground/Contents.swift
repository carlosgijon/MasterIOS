//: Playground - noun: a place where people can play

import UIKit

var contador_array: Int = 0

var miPrimerArray: [Int] = [1,2,3,4,5]
// Añadimos un elemento
miPrimerArray += [6]
// Eliminamos un elemento
miPrimerArray.remove(at: 2)

// Recorremos el array
while(contador_array < miPrimerArray.count) {
    print("el índice \(contador_array) tiene almacenado \(miPrimerArray[contador_array])")
    contador_array += 1
}
print()  // Una linea en blanco

var contador_diccionario: Int = 0

var miPrimerDiccionario: [String: Int] = ["pepe":31, "antonio":45, "julio":74, "pedro":20]
// Añadimos un elemento
miPrimerDiccionario["Carlos"] = 32
// Eliminamos un elemento
miPrimerDiccionario.removeValue(forKey: "pedro")

// Recorremos el diccionario
for (clave,valor) in miPrimerDiccionario {
    if(clave == "pepe") {
        print("clave: \(clave) \t\t valor: \(valor)")
        continue
    }
    print("clave: \(clave) \t valor: \(valor)")
}
