import Foundation
import ObjectMapper

struct Main : Mappable {
	var videoStreamingApp : VideoStreamingApp?
	var statusCode : Int?

	init?(map: Map) {

	}
    init(){
        
    }
	mutating func mapping(map: Map) {

        videoStreamingApp <- map["VIDEO_STREAMING_APP"]
		statusCode <- map["status_code"]
	}

}
extension Main{
    var getvideoStreamingApp:VideoStreamingApp? {
        guard let videoStreamingApp = self.videoStreamingApp else {return VideoStreamingApp.init()
            
        }
        return videoStreamingApp
    }
    var getstatusCode:Int {
        guard let statusCode = self.statusCode else {return 0}
        return statusCode
    }
}
