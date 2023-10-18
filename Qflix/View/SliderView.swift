//
//  File.swift
//  Qflix
//
//  Created by Talut mahamud Deep on 12/10/23.
//
import SwiftUI
import SDWebImageSwiftUI

struct SliderView: View {
    var sliderImage: String
    var body: some View {
            HStack(spacing: 20){
                WebImage(url: Helper.getImage(imageString: sliderImage))
                    .resizable()
                    .scaledToFit()
                    .frame(width: UIScreen.main.bounds.width - 70, height: 200 )
                
            }.padding(.top , -50)
        

    }
}
struct SliderCellViewsl_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(sliderImage: "https://videoportal.viavilab.com/upload/images/jayeshbhai_jordaar.jpg")
    }
}
