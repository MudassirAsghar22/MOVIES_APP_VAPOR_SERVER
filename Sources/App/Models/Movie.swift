//
//  File.swift
//  
//
//  Created by Mudassir Asghar on 09/09/2024.
//

import Foundation
import Fluent
import Vapor


final class Movie: Model, Content {
    static let schema: String = "movies" // table name

    @ID(key: .id)
    var id: UUID? // primary key

    @Field(key: "title") // col
    var title: String

    @Field(key: "poster")
    var poster: String

    // Has many // One to Many relation
    @Children(for: \.$movie)
    var reviews: [Review]

    // MANY TO MANY RELATION,,,, (through: PIVOT TABLE,  from, to: SHOULD BE IDs connecting both)
    @Siblings(through: MovieActor.self, from: \.$movie, to: \.$actor)
    var actors: [Actor]


    init(){}

    init(id: UUID? = nil, title: String, poster: String) {
        self.id = id
        self.title = title
        self.poster = poster
    }

}
