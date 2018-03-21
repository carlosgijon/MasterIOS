//: Playground - noun: a place where people can play

import UIKit

func SumaUnoIntout( valor: inout Int) {
    valor += 1
}

var numero: Int = 5
SumaUnoIntout(valor: &numero)
print(numero)
