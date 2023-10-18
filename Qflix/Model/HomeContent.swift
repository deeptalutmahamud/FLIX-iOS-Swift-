import Foundation
import ObjectMapper

struct HomeContent : Mappable {
	var videoId : String?
	var videoType : String?
	var videoTitle : String?
	var movieDuration : String?
	var videoAccess : String?
	var videoImage : String?

	init?(map: Map) {

	}
    init(){
        
    }
	mutating func mapping(map: Map) {

        videoId <- map["video_id"]
		videoType <- map["video_type"]
		videoTitle <- map["video_title"]
		movieDuration <- map["movie_duration"]
		videoAccess <- map["video_access"]
		videoImage <- map["video_image"]
	}
}
extension HomeContent{

    var getvideoId:String {
        guard let videoId = self.videoId else {return ""}
        return videoId
    }
    
    var getvideoType:String {
        guard let videoType = self.videoType else {return ""}
        return videoType
    }
    
    var getvideoTitle:String {
        guard let videoTitle = self.videoTitle else {return ""}
        return videoTitle
    }
    
    var getmovieDuration:String {
        guard let movieDuration = self.movieDuration else {return ""}
        return movieDuration
    }
    var getvideoAccess:String {
        guard let videoAccess = self.videoAccess else {return ""}
        return videoAccess
    }
    var getvideoImage:String {
        guard let videoImage = self.videoImage else {return ""}
        return videoImage
    }
}
