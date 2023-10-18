//
//  Helper.swift
//  Qflix
//
//  Created by Talut mahamud Deep on 12/10/23.
//

import Foundation
struct Helper {
   static func getImage(imageString:String) -> URL? {
        if imageString.hasPrefix("http") {
            if  let imageUrl = URL(string: imageString) {
                return imageUrl
            }else {
                return  nil
            }
        }else if imageString.hasPrefix("https") {
            if  let imageUrl = URL(string: imageString) {
                return imageUrl
            }else {
                return  nil
            }
        }else {
            if  let imageUrl = URL(string: imageString) {
                return imageUrl
            }else {
                print(imageString)
                return  nil
            }
        }
    }
}
