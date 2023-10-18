//
//  SwiftUIView.swift
//  Qflix
//
//  Created by Talut mahamud Deep on 16/10/23.
//

import SwiftUI
import SDWebImage
import SDWebImageSwiftUI

struct DetailsView: View {
    var MovieId:Int
    @StateObject var detailsview = DetailsViewModel()
    var body: some View {
        VStack {
            if let Img = detailsview.DetailsModel?.getvideoStreamApp.getrelatedMovies{
                if(Img.count > 0 ){
                    ForEach(0..<Img.count , id:\.self) { index in
                        let img = Img[index]
                        SliderView(sliderImage: img.getmoviePoster)
                    }
                    
                }
            }
        }
        .onAppear {
            detailsview.getdetails()
        }

        
        
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(MovieId: 2)
    }
}



