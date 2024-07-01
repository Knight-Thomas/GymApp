//
//  DBHelper.swift
//  GymHexSwiftUI
//
//  Created by Tom Knight on 23/05/2024.
//

import Foundation
import SQLite3

class DBHelper {
    var db : OpaquePointer?
    var path: String = "GymAppUsers.sqlite"
    init() {
        self.db = createDB()
    }
    
    func createDB() -> OpaquePointer? {
        let filePath = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathExtension(path)
        var db : OpaquePointer? = nil
        
        if sqlite3_open(filePath.path, &db) != SQLITE_OK {
            print("There is an error in creating the database")
            return nil
        }else {
            print("Database has been created with path \(path)")
            return db
        }
    }
}
