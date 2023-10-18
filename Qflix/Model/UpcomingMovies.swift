import Foundation
import ObjectMapper

struct UpcomingMovies : Mappable {
	var movieId : Int?
	var movieTitle : String?
	var moviePoster : String?
	var movieDuration : String?
	var movieAccess : String?

	init?(map: Map) {

	}

	mutating func mapping(map: Map) {

        movieId <- map["movie_id"]
        movieTitle <- map["movie_title"]
        moviePoster <- map["movie_poster"]
        movieDuration <- map["movie_duration"]
        movieAccess <- map["movie_access"]
	}

}
extension UpcomingMovies{

    var getmovieId:Int {
        guard let movieId = self.movieId else {return 0}
        return movieId
    }
    var getmovieTitle:String {
        guard let movieTitle = self.movieTitle else {return ""}
        return movieTitle
    }
    
    var getmoviePoster:String {
        guard let moviePoster = self.moviePoster else {return ""}
        return moviePoster
    }
    var getmovieDuration:String {
        guard let movieDuration = self.movieDuration else {return ""}
        return movieDuration
    }
    
    var getmovieAccess:String {
        guard let movieAccess = self.movieAccess else {return ""}
        return movieAccess
    }
    
    

}
