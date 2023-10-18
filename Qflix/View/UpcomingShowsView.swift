
//  File.swift
//  Qflix
//
//  Created by Talut mahamud Deep on 12/10/23.
//
import SwiftUI
import SDWebImageSwiftUI

struct UpcomingShowsView: View {
    var upcomingShowsImage: String
    var body: some View {
            HStack(spacing: 20){
                WebImage(url: Helper.getImage(imageString: upcomingShowsImage))
                    .resizable()
                    .scaledToFit()
                    .frame(width: UIScreen.main.bounds.width - 70, height: 200 )
                    
                
            }.padding(.top , -50)
        

    }
}
struct UpcomingShowsViewViews_Previews: PreviewProvider {
    static var previews: some View {
        UpcomingShowsView(upcomingShowsImage: "https://videoportal.viavilab.com/upload/images/Prithviraj_Small.jpg")
    }
}

