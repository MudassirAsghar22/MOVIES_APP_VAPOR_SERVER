//
//  File.swift
//  
//
//  Created by Mudassir Asghar on 09/09/2024.
//

import Foundation
import Fluent
import FluentPostgresDriver
import Vapor

final class Review: Model, Content {
    static let schema: String = "reviews" // table name

    @ID(key: .id)
    var id: UUID? // PK

    @Field(key: "title") // col
    var title: String

    @Field(key: "body") // col
    var body: String

    // Belongs to 
    @Parent(key: "movie_id") // FK
    var movie: Movie

    init(){}

    init(id: UUID? = nil, title: String, body: String, movieId: UUID) {
        self.id = id
        self.title = title
        self.body =  body
        self.$movie.id = movieId
    }

}
