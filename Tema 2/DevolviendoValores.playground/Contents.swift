//: Playground - noun: a place where people can play

import UIKit

func maximoYminimo(numerosFlotantes: [Float]) -> (max: Float, min: Float) {
    var maximo = numerosFlotantes[0]
    var minimo = numerosFlotantes[0]
    for n in numerosFlotantes {
        if n > maximo {
            maximo = n
        }
        else if n < minimo {
            minimo = n
        }
    }
    return (maximo, minimo)
}

var resultado = maximoYminimo(numerosFlotantes: [28.3, 34.2, 1.2, 9,39.50])
print("El resultado maximo es \(resultado.max)")
print("El resultado minimo es \(resultado.min)")
