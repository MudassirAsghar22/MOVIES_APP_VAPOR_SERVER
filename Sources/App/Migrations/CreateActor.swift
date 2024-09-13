//
//  File.swift
//  
//
//  Created by Mudassir Asghar on 10/09/2024.
//

import Foundation
import Fluent
import FluentPostgresDriver
import Vapor

struct CreateActor: Migration {
    func prepare(on database: any FluentKit.Database) -> NIOCore.EventLoopFuture<Void> {
        database.schema("actors")
            .id()
            .field("name",.string)
            .create()

    }
    
    func revert(on database: any FluentKit.Database) -> NIOCore.EventLoopFuture<Void> {
        database.schema("actors").delete()
    }
    

}
