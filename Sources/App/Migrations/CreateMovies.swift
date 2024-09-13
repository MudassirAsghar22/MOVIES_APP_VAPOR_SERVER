import Fluent

struct CreateMovies: Migration {
    func prepare(on database: any FluentKit.Database) -> NIOCore.EventLoopFuture<Void> {
        database.schema("movies")
           .id()
           .field("title", .string)
           .create()
    }
    
    func revert(on database: any FluentKit.Database) -> NIOCore.EventLoopFuture<Void> {
        database.schema("movies").delete()
    }

}
