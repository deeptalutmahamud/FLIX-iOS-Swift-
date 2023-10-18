//
//import Foundation
//import Alamofire
//
//enum DetailsApiEndPoint {
//
//    case getdetails(token: String)
//}
//
//extension DetailsApiEndPoint: DSEndpoint {
//
//    var method: HTTPMethod {
//        return .post
//    }
//
//    var path: String {
//        switch self {
//        case .getdetails:
//            return  "https://videoportal.viavilab.com/api/v1/movies_details"
//        }
//    }
//
//    var parameters: [String: Any] {
//        switch self {
//        case .getdetails(let token):
//            return ["data": token]
//        }
//    }
//}
