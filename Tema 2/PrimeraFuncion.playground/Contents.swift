//: Playground - noun: a place where people can play

import UIKit

func calculaAreaDelTriangulo(base: Float, altura: Float) -> Float {
    return (base * altura) / 2
}

let baseTriangulo: Float = 5.3
let alturaTriangulo: Float = 8.2

print("El area del triangulo es \(calculaAreaDelTriangulo(base:baseTriangulo,altura:alturaTriangulo))")
