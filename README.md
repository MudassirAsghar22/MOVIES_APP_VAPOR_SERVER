Movies API Server

This project is a server-side application built with Vapor 4, a powerful web framework for Swift. The server provides RESTful APIs to manage and serve movie data for a client-side Movies app.

Features

Movie Management: Create, update, delete, and fetch movie details.
User Authentication: Secure endpoints with JWT-based user authentication.
Search & Filter: Search movies by title, genre, or release year.
Pagination: Efficiently paginate through large datasets.
Error Handling: Comprehensive error responses for invalid requests.
Logging: Integrated logging for tracking requests and errors.
Prerequisites

Swift 5.3 or later
Vapor 4
PostgreSQL (or your chosen database)
Getting Started

1. Clone the Repository
bash
Copy code
git clone https://github.com/yourusername/movies-api-server.git
cd movies-api-server
2. Install Dependencies
Use Vapor's command-line tool to fetch the dependencies:

bash
Copy code
vapor xcode -y
Or, if not using Xcode:

bash
Copy code
swift package resolve
3. Environment Setup
Create a .env file in the root of your project and configure your environment variables:

env
Copy code
DATABASE_URL=postgresql://username:password@localhost:5432/moviesdb
JWT_SECRET=your_jwt_secret
4. Database Setup
Ensure that your database is correctly configured. Run migrations to set up the database schema:

bash
Copy code
vapor run migrate
5. Run the Server
Start the Vapor server:

bash
Copy code
vapor run serve
The server should now be running on http://localhost:8080.

API Endpoints

Movies
GET http://127.0.0.1:8080/movies - Get a list of movies with optional search and filters.
GET http://127.0.0.1:8080/movies/movieId - Get details of a specific movie.
POST http://127.0.0.1:8080/movies - Create a new movie (requires authentication).
DELETE http://127.0.0.1:8080/movies/movieId - Delete a movie (requires authentication).

Reviews
POST http://127.0.0.1:8080/reviews - Get a list of reviews with optional search and filters.
GET http://127.0.0.1:8080/movies/movieId/reviews

Testing

Run the tests using Vapor's testing suite:

bash
Copy code
vapor test
Deployment

For deployment, configure your environment variables and database settings for the production environment. You can deploy to any cloud service that supports Swift, such as Vapor Cloud, Heroku, or AWS.

Contributing

Contributions are welcome! Please submit a pull request or open an issue for any bug fixes or feature requests.

License

This project is licensed under the MIT License - see the LICENSE file for details.
