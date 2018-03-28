//: Playground - noun: a place where people can play

import UIKit
func comprobaciones_varias(numero: Int) {
    if(numero % 4 == 0 ) {
        print("El numero \(numero) es divisible entre 4")
    }
    else if(numero % 2 != 0 && numero % 9 == 0 ) {
        print("El numero \(numero) es impar y divisible entre 9")
    }
    else {
        print("El numero \(numero) no cumple ninguna condicion de las que se expone")
    }
}

let numero_a_comprobar: Int = 27
comprobaciones_varias(numero: numero_a_comprobar)
