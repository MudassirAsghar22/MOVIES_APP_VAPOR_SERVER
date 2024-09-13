import Fluent
import Vapor

func routes(_ app: Application) throws {

    let moviesController = MoviesController()
    let reviewController = ReviewsController()

    // POST  save movies
    app.post("movies", use: moviesController.create)
    
    // GET Fetch all Movies
    app.get("movies", use: moviesController.all)
    
    // DELETE Movie
    app.delete("movies",":movieId", use: moviesController.delete)


    // POST /reviews Add Review
    app.post("reviews", use: reviewController.create)

    // GET /movies/:movieId/reviews
    app.get("movies", ":movieId", "reviews", use: reviewController.getByMovieId)
}
