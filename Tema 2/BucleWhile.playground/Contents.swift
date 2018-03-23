//: Playground - noun: a place where people can play

import UIKit

let array_numero: [Int] = [1,2,3,4,5,6,7,8,9]
var contador: Int = 0;

print("Voy a meterme al bucle while")
while (contador < array_numero.count) {
    print(array_numero[contador])
    contador += 1
}
print("He salido del bucle while")

print("Voy a meterme al bucle repeat - while")
contador = 0;
repeat {
    print(array_numero[contador])
    contador += 1
} while (contador < array_numero.count)
print("He salido del bucle repeat - while")
