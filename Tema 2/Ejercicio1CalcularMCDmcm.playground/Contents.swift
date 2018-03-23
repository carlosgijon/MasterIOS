import UIKit

var numero1: Int = 12
var numero2: Int = 28

// Hallar el maximo comun divisor
func mcd(numero1: Int, numero2: Int) -> Int {
    var a: Int = numero1
    var b: Int = numero2
    var resto = 0
    while(b > 0) {
        resto = b
        b = a % b
        a = resto
    }
    return a
}
var resultado_MCD: Int = mcd(numero1: numero1, numero2: numero2)
// Hallar el minimo comun multiplo
func mcm(numero1: Int, numero2: Int) -> Int {
    let a: Int = numero1
    let b: Int = numero2
    let m: Int = resultado_MCD
    let resultado_mcm: Int = (m * (a / m) * (b / m))
    
    return resultado_mcm
}
var resultado_mcm: Int = mcm(numero1: numero1, numero2: numero2)

print("El maximo comun divisor es \(resultado_MCD)")
print("El minimo comun multiplo es \(resultado_mcm)")
