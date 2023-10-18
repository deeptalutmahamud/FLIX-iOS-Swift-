import Foundation
import ObjectMapper

struct Slider : Mappable {
	var sliderTitle : String?
	var sliderType : String?
	var sliderPostid : Int?
	var sliderImage : String?
	var videoAccess : String?

	init?(map: Map) {

	}
    init(){
        
    }

	mutating func mapping(map: Map) {

        sliderTitle <- map["slider_title"]
        sliderType <- map["slider_type"]
        sliderPostid <- map["slider_post_id"]
        sliderImage <- map["slider_image"]
        videoAccess <- map["video_access"]
	}

}
extension Slider{

    var getsliderPostid:Int {
        guard let sliderPostid = self.sliderPostid else {return 0}
        return sliderPostid
    }
    var getsliderTitle:String {
        guard let sliderTitle = self.sliderTitle else {return ""}
        return sliderTitle
    }
    
    var getsliderType:String {
        guard let sliderType = self.sliderType else {return ""}
        return sliderType
    }
    var getsliderImage:String {
        guard let sliderImage = self.sliderImage else {return ""}
        return sliderImage
    }
    
    var getvideoAccess:String {
        guard let videoAccess = self.videoAccess else {return ""}
        return videoAccess
    }
    
    

}
