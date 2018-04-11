//: Playground - noun: a place where people can play

import UIKit

func operaciones_array(arr: [Int]) {
    var suma: Int = 0, maximo: Int = arr[0], minimo: Int = arr[0], cnt: Int = 0
    var media: Double, suma_double: Double, count_double: Double = Double(arr.count)
    
    while(cnt < arr.count) {
        // suma total
        suma += arr[cnt]
        
        // maximo
        if(arr[cnt] > maximo) {
            maximo = arr[cnt]
        }
        
        // minimo
        if(arr[cnt] < minimo) {
            minimo = arr[cnt]
        }
        cnt += 1
    }
    
    suma_double = Double(suma)
    media = suma_double / count_double
    
    // Printamos los resultados
    print("La suma de los números es \(suma)")
    print("El numero máximo es \(maximo)")
    print("El numero mínimo es \(minimo)")
    print("La media es \(media)")
}

var array_numeros: [Int] = [5,15,16,19,31,58,67,1]
operaciones_array(arr: array_numeros)
