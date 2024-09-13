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


// we will not be returning this model back in api thats why not confirming to Content
final class MovieActor: Model {

    static let schema: String = "movie_actors"

    @ID(key: .id)
    var id: UUID?

    @Parent(key: "movie_id")
    var movie: Movie

    @Parent(key: "actor_id")
    var actor: Actor

    init() {

    }

    init(movieId: UUID, actorId: UUID) {
        self.$movie.id = movieId
        self.$actor.id = actorId
    }
}
