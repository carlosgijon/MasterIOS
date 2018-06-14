//
//  gestorDB.swift
//  sqlite
//
//  Created by carlos on 14/6/18.
//  Copyright © 2018 carlos. All rights reserved.
//

import UIKit

class gestorDB: NSObject {
    class func obtenerRutaDB() -> NSString {
        var directorio_documentos: NSString = NSString()
        var rutas: NSArray = NSArray()
        var rutaDB: NSString = NSString()
        
        let NSDocumentDirectory = FileManager.SearchPathDirectory.documentDirectory
        let NSUserDomainMask = FileManager.SearchPathDomainMask.userDomainMask
        
        rutas = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, true) as NSArray
        directorio_documentos = rutas.object(at: 0) as! NSString
        
        var file_manager = FileManager()
        rutaDB = directorio_documentos.appendingPathComponent("ApprendemosBD.db.sqlite") as NSString
       
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
}
