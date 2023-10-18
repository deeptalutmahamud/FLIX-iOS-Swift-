
//  Qflix
//
//  Created by Talut mahamud Deep on 12/10/23.
//
import SwiftUI
import SDWebImageSwiftUI

struct UpcomingMovieView: View {
    var upcomingMovieImage: String
    var body: some View {
            HStack(spacing: 20){
                WebImage(url: Helper.getImage(imageString: upcomingMovieImage))
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width - 70, height: 300 )
                    
                
            }.padding(.top , -50)
        

    }
}
struct UpcomingMovieViewViews_Previews: PreviewProvider {
    static var previews: some View {
        UpcomingMovieView(upcomingMovieImage: "https://videoportal.viavilab.com/upload/images/Prithviraj_Small.jpg")
    }
}

