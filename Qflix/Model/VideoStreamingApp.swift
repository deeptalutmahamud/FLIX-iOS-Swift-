import Foundation
import ObjectMapper

struct VideoStreamingApp : Mappable {
	var slider : [Slider]?
	var recentlyWatched : [RecentlyWatched]?
	var upcomingMovies : [UpcomingMovies]?
	var upcomingSeries : [UpcomingSeries]?
	var homeSections : [HomeSections]?

	init?(map: Map) {

	}
    init(){
        
    }

	mutating func mapping(map: Map) {

		slider <- map["slider"]
		recentlyWatched <- map["recently_watched"]
		upcomingMovies <- map["upcoming_movies"]
		upcomingSeries <- map["upcoming_series"]
		homeSections <- map["home_sections"]
	}

}
extension VideoStreamingApp{
    var getslider:[Slider]? {
        guard let slider = self.slider else {
            return [Slider].init()
            
        }
        return slider
    }
    
    var getrecentlyWatched:[RecentlyWatched] {
        guard let recentlyWatched = self.recentlyWatched else {return [RecentlyWatched].init()}
        return recentlyWatched
    }
    var getupcomingMovies:[UpcomingMovies] {
        guard let upcomingMovies = self.upcomingMovies else {return [UpcomingMovies].init()}
        return upcomingMovies
    }
    var getupcomingSeries:[UpcomingSeries] {
        guard let upcomingSeries = self.upcomingSeries else {return [UpcomingSeries].init()}
        return upcomingSeries
    }
    var getuhomeSections:[HomeSections] {
        guard let homeSections = self.homeSections else {return [HomeSections].init()}
        return homeSections
    }
    
}
