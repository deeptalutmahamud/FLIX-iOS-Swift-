//
//  ContentView.swift
//  Qflix
//
//  Created by Talut mahamud Deep on 8/10/23.
//

import SwiftUI
import SDWebImage
import SDWebImageSwiftUI

struct ContentView: View {
    @StateObject var viewModel = VideoStreamViewModel()
    var body: some View {
        NavigationView {
            ZStack{
                    Color(UIColor.black)
                        .ignoresSafeArea(.all)
                    ScrollView(.vertical, showsIndicators: false){
                        VStack{
                            
                            ScrollView(.horizontal, showsIndicators: false){
                                HStack(spacing: 20){
                                    
                                    if let Slider = viewModel.videoStreamsModel?.getvideoStreamingApp?.getslider{
                                        if(Slider.count > 0 ){
                                            ForEach(0..<Slider.count , id:\.self) { index in
                                                let slider = Slider[index]
                                                SliderView(sliderImage: slider.getsliderImage)
                                                
                                            }
                                            
                                        }
                                    }
                                }
                                
                            }
                            VStack(alignment: .leading){
                                    Text("Recently Watched")
                                        .font(.title2)
                                        .foregroundColor(Color.white)
                                    ScrollView(.horizontal, showsIndicators: false){
                                        HStack(spacing: 20){
                                            if let RecentlyWatched = viewModel.videoStreamsModel?.getvideoStreamingApp?.getrecentlyWatched{
                                                if(RecentlyWatched.count > 0 ){
                                                    ForEach(0..<RecentlyWatched.count , id:\.self) { index in
                                                        let recentlyWatched = RecentlyWatched[index]
                                                        SliderView(sliderImage: recentlyWatched.getvideoThumbImage)
                                                        
                                                    }
                                                    
                                                }
                                            }
                                        }
                                        
                                    }
                            }
                            VStack(alignment: .leading){
                                Text("Upcoming Movie")
                                    .font(.title2)
                                    .foregroundColor(Color.white)
                                ScrollView(.horizontal, showsIndicators: false){
                                    HStack(spacing: 20){
                                        if let UpcomingMovie = viewModel.videoStreamsModel?.getvideoStreamingApp?.getupcomingMovies{
                                            if(UpcomingMovie.count > 0 ){
                                                ForEach(0..<UpcomingMovie.count , id:\.self) { index in
                                                    let upcomingMovie = UpcomingMovie[index]
                                                    UpcomingMovieView(upcomingMovieImage: upcomingMovie.getmoviePoster)
                                                    
                                                }
                                                
                                            }
                                        }
                                    }
                                    
                                }
                            }
                            VStack(alignment: .leading){
                                Text("Upcoming Shows")
                                    .font(.title2)
                                    .foregroundColor(Color.white)
                                ScrollView(.horizontal, showsIndicators: false){
                                    HStack(spacing: 20){
                                        if let UpcomingShows = viewModel.videoStreamsModel?.getvideoStreamingApp?.getupcomingSeries{
                                            if(UpcomingShows.count > 0 ){
                                                ForEach(0..<UpcomingShows.count , id:\.self) { index in
                                                    let upcomingShows = UpcomingShows[index]
                                                    UpcomingShowsView(upcomingShowsImage: upcomingShows.getshowPoster)
                                                    
                                                }
                                                
                                            }
                                        }
                                    }
                                    
                                }
                            }
                            
                            
                            Spacer()
                            
                            
                        }.onAppear{
                            viewModel.getVideoStreams()
                            
                        }
                        .padding()
                    }
            }
        }
            
            
            
            
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

