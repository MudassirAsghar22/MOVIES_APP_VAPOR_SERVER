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

final class Actor: Model, Content {
    static let schema: String = "actors"

    @ID(key: .id)
    var id: UUID?

    @Field(key: "name")
    var name: String

    // MANY TO MANY RELATION,,,, (through: PIVOT TABLE,  from, to: SHOULD BE IDs connecting both)
    @Siblings(through: MovieActor.self, from: \.$actor, to: \.$movie)
    var movies: [Movie]

    init() {
        
    }

    init(id: UUID? = nil, name: String) {
        self.id = id
        self.name = name
    }
}
