//: Playground - noun: a place where people can play

import UIKit

func esPrimo(numero: Int) -> Bool {
    var flag = true
    var contador = numero
    while(contador > 2) {  // Debe ser mayor que 1, ya que no se necesita division entre 1
        contador -= 1
        if (numero_a_comprobar % contador == 0) {
            flag = false
            break
        }
    }
    return flag
}

let numero_a_comprobar = 14
if (esPrimo(numero: numero_a_comprobar)) {
    print("el numero \(numero_a_comprobar) ES primo")
}
else {
    print("el numero \(numero_a_comprobar) NO ES primo")
}



