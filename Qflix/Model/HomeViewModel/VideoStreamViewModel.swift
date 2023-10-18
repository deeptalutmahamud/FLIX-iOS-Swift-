//
//  File.swift
//  Qflix
//
//  Created by Talut mahamud Deep on 11/10/23.
//

import Foundation
import Alamofire

class VideoStreamViewModel: ObservableObject {
    
    @Published var videoStreamsModel: Main?
    func getVideoStreams() {
        struct Parameter: Encodable {
            let token: String

        }
        let token = "eyJzYWx0IjoiNDEzIiwic2lnbiI6IjA1YjExZTZkZTU0NzZkYmI4NjE0MTc1ZWJjYTQ3ZWY5Iiwi%0AdXNlcl9pZCI6IjEzNTgifQ%3D%3D%0A"
        let json = "data=\(token)"
        let jsonData = json.data(using: .utf8, allowLossyConversion: false)!



        // create post request
        let url = URL(string: "https://videoportal.viavilab.com/api/v1/home")!
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")

        // insert json data to the request
        request.httpBody = jsonData

        // Make the Alamofire request
        AF.request(request).responseJSON { response in
            switch response.result {
            case .success(let value):
                
                if let json = value as? [String: Any] {
                    if let mainModel = Main(JSON: json) {
                            self.videoStreamsModel = mainModel
                        print("Deep Intern: \(self.videoStreamsModel)")
                        
                    } else {
                        print("Failed to initialize Main model from JSON")
                    }
                }


                print("API Success: \(value)")
            case .failure(let error):
                print("API Failure: \(error.localizedDescription)")
            }
        }
    }
}


