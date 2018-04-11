//: Playground - noun: a place where people can play

import UIKit

class Ordenador {
    private var procesador: String
    private var ghz_procesador: Float
    private var gb_ram: Float
    
    // Constructor
    init(pro: String, g_pro: Float, g_ram: Float) {
        self.procesador = pro
        self.ghz_procesador = g_pro
        self.gb_ram = g_ram
    }
    
    public func imprimir_caracteristicas() {
        print("El ordenador tiene un procesador \(procesador) de \(ghz_procesador) Ghz y \(gb_ram) gb de Ram")
    }
    
}

var ordenadores: [Ordenador] = []

// Añadimos ordenadores
ordenadores.append(Ordenador(pro: "Intel", g_pro:3.7, g_ram: 8.0))
ordenadores.append(Ordenador(pro: "Chino", g_pro:0.7, g_ram: 2.0))
ordenadores.append(Ordenador(pro: "AMD", g_pro:5.8, g_ram: 16.0))
ordenadores.append(Ordenador(pro: "Mac", g_pro:200.7, g_ram: 86.0))

for ordenador in ordenadores {
    ordenador.imprimir_caracteristicas()
}
