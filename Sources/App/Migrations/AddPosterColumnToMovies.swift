//
//  File.swift
//  
//
//  Created by Mudassir Asghar on 10/09/2024.
//

import Foundation
import Vapor
import Fluent
import FluentPostgresDriver

struct AddPosterColumnToMovies: Migration {
    func prepare(on database: any FluentKit.Database) -> NIOCore.EventLoopFuture<Void> {
        database.schema("movies")
            .field("poster", .string)
            .update()

    }

    func revert(on database: any FluentKit.Database) -> NIOCore.EventLoopFuture<Void> {
        database.schema("movies")
            .deleteField("poster")
            .delete()
    }


}
