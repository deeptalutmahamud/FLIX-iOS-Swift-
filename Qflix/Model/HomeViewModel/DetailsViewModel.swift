//
//  File.swift
//  Qflix
//
//  Created by Talut mahamud Deep on 11/10/23.
//

import Foundation
import Alamofire

class DetailsViewModel: ObservableObject {
    @Published var DetailsModel: DetailsMain?
    func getdetails() {
        struct Parameter: Encodable {
            let token: String

        }
        let token = "eyJzYWx0IjoiNDI5Iiwic2lnbiI6IjQ1NGQyMmIyN2MwMzE3YzU0ZDdhYjE2NjQ0ZDYzMTJiIiwi%0AbW92aWVfaWQiOiIxNyIsInVzZXJfaWQiOiIxMzU4In0%3D%0A"
        let json = "data=\(token)"
        let jsonData = json.data(using: .utf8, allowLossyConversion: false)!



        // create post request
        let url = URL(string: "https://videoportal.viavilab.com/api/v1/movies_details")!
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
                    if let DetailsMainModel = DetailsMain(JSON: json) {
                        self.DetailsModel = DetailsMainModel
                        print("Deep Intern: ")
                        
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


