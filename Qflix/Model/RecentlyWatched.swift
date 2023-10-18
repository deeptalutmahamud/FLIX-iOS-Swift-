import Foundation
import ObjectMapper

struct RecentlyWatched : Mappable {
	var videoId : Int?
	var videoType : String?
	var videoThumbImage : String?

	init?(map: Map) {

	}

	mutating func mapping(map: Map) {

        videoId <- map["video_id"]
		videoType <- map["video_type"]
		videoThumbImage <- map["video_thumb_image"]
	}

}
extension RecentlyWatched{

    var getvideoId:Int {
        guard let videoId = self.videoId else {return 0}
        return videoId
    }
    var getvideoType:String {
        guard let videoType = self.videoType else {return ""}
        return videoType
    }
    
    var getvideoThumbImage:String {
        guard let videoThumbImage = self.videoThumbImage else {return ""}
        return videoThumbImage
    }
    

}
