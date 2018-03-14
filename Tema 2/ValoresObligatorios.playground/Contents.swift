//: Playground - noun: a place where people can play

import UIKit

let stringPosible: String? = "Un string opcional"
let stringForzado: String = stringPosible! // Con esto se fuerza a que stringPosible no sea nil

print("El String forzado contiene \(stringForzado)")
