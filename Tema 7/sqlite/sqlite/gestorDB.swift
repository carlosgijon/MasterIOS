//
//  gestorDB.swift
//  sqlite
//
//  Created by carlos on 14/6/18.
//  Copyright © 2018 carlos. All rights reserved.
//

import UIKit

class gestorDB: NSObject {
    
    // class func es hacer una funcion de clase (o funcion static en Java)
    class func obtenerRutaDB() -> NSString {
        var directorio_documentos: NSString = NSString()
        var rutas: NSArray = NSArray()
        var rutaDB: NSString = NSString()
        
        let NSDocumentDirectory = FileManager.SearchPathDirectory.documentDirectory
        let NSUserDomainMask = FileManager.SearchPathDomainMask.userDomainMask
        
        rutas = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, true) as NSArray
        directorio_documentos = rutas.object(at: 0) as! NSString
        
        var file_manager = FileManager()
        rutaDB = directorio_documentos.appendingPathComponent("ApprendemosBD.bd") as NSString
       
        if(file_manager.fileExists(atPath: rutaDB as String) == false) {
            do {
                try file_manager.copyItem(at: NSURL(string: Bundle.main.resourcePath!.appending("ApprendemosBD.db.sqlite"))! as URL, to: NSURL(string: rutaDB as String)! as URL)
            }
            catch {
                print(error)
            }
        }
        print(rutaDB)
        return rutaDB
    }
    
    class func aniadeTutorial(tutorialInfo: tutorial) -> Bool {
        
        var ubicacion_DB = self.obtenerRutaDB()
        let DB = FMDatabase(path: ubicacion_DB as String)
        
        if !DB.open() {
            print("No se puede abrir la BD")
        }
        
        var sentencia_SQL = "INSERT INTO tutoriales(sistema, nombre, terminado) values (?,?,?)"

        if !DB.executeUpdate(sentencia_SQL, withArgumentsIn: [tutorialInfo.sistema, tutorialInfo.nombre, tutorialInfo.terminado]) {
            
            DB.close()
            return false
        }
        else {
            
            DB.close()
            return true
        }
       
    }
    
    
    
    class func obtenerTutoriales() -> NSMutableArray {
        var ubicacion_DB = self.obtenerRutaDB()
        let DB = FMDatabase(path: ubicacion_DB as String)
        
        if !DB.open() {
            print("No se puede abrir la BD")
        }
        
        var sentencia_SQL = "SELECT id_tutorial, sistema, nombre, terminado FROM tutoriales"

        let rs = DB.executeQuery(sentencia_SQL, withArgumentsIn: [])
        
        var res = NSMutableArray()
        
        while (rs?.next())! {
            var restTemp: tutorial = tutorial()
            restTemp.id_tutorial = Int((rs?.string(forColumn: "id_tutorial"))!)!
            restTemp.sistema = (rs?.string(forColumn: "sistema"))!
            restTemp.nombre = (rs?.string(forColumn: "nombre"))!
            restTemp.terminado = (rs?.bool(forColumn: "terminado"))!
        }
        
        DB.close()
        return res
    }
    
    
    
    
    
    
    
    
    
}
