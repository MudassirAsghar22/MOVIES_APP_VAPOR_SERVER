//
//  File.swift
//  
//
//  Created by Mudassir Asghar on 10/09/2024.
//

import Foundation
import Fluent
import FluentPostgresDriver


struct CreateMovieActor: Migration {
    func prepare(on database: any FluentKit.Database) -> NIOCore.EventLoopFuture<Void> {
        database.schema("movie_actors")
            .id()
            .field("movie_id",.uuid, .required, .references("movies", "id"))
            .field("actor_id", .uuid, .required, .references("actors", "id"))
            .create()
    }
    
    func revert(on database: any FluentKit.Database) -> NIOCore.EventLoopFuture<Void> {
        database.schema("movie_actors").delete()
    }
    

}
