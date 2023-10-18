import Foundation
import Alamofire

protocol DSEndpoint {
    var method: HTTPMethod { get }
    var path: String { get }
    var parameters: [String: Any] { get }
    var encoding: ParameterEncoding { get }
}

extension DSEndpoint {
    var encoding: ParameterEncoding {
        return JSONEncoding.default
    }
}
