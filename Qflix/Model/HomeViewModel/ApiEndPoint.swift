import Foundation
import Alamofire

enum ApiEndPoint {
    
    case getVideoStreams(token: String)
    case getdetails(token: String)
}

extension ApiEndPoint: DSEndpoint {
    
    var method: HTTPMethod {
        return .post
    }
    
    var path: String {
        switch self {
        case .getVideoStreams:
            return "https://videoportal.viavilab.com/api/v1/home"
        case .getdetails:
            return "https://videoportal.viavilab.com/api/v1/movies_details"       }
    }
    
    var parameters: [String: Any] {
        switch self {
        case .getVideoStreams(let token):
            return ["data": token]
        case .getdetails(token: let token):
            return ["data": token]
        }
    }
}
