import Foundation
import ObjectMapper

struct UpcomingSeries : Mappable {
	var showId : Int?
	var showTitle : String?
	var showPoster : String?
	var showAccess : String?

	init?(map: Map) {

	}

	mutating func mapping(map: Map) {

		showId <- map["show_id"]
		showTitle <- map["show_title"]
		showPoster <- map["show_poster"]
		showAccess <- map["show_access"]
	}

}
extension UpcomingSeries{

    var getshowId:Int {
        guard let showId = self.showId else {return 0}
        return showId
    }
    var getshowTitle:String {
        guard let showTitle = self.showTitle else {return ""}
        return showTitle
    }
    
    var getshowPoster:String {
        guard let showPoster = self.showPoster else {return ""}
        return showPoster
    }
    var getshowAccess:String {
        guard let showAccess = self.showAccess else {return ""}
        return showAccess
    }
    
   

}
