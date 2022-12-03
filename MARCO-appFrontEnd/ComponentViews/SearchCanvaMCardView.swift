//
//  SearchCanvaMCardView.swift
//  MARCO-appFrontEnd
//
//  Created by Ingrid Chávez on 11/8/22.
//

import SwiftUI

struct SearchCanvaMCardView: View {
    let item : ArtworkModel
    
    var body: some View {
        
        ZStack(alignment: .bottomLeading){
            //START Image Box
            Rectangle()
                .frame(minWidth: 175, maxWidth: 175, minHeight: 175, maxHeight: 175)
                .overlay(AsyncImage(url: URL(string: item.artworkImages[0]), content: { image in
                    image.resizable().scaledToFill()
                    
                }, placeholder: {
                    ProgressView()
                    
                })
                    .frame(height: 175)
                    .overlay(LinearGradient(gradient: Gradient(colors: [.clear, .black]), startPoint: .top, endPoint: .bottom)))
            
            // LinearGradient(gradient: Gradient(colors: [.clear, .black]), startPoint: .top, endPoint: .bottom)
            
            //Text inside the header image
            VStack(alignment: .leading, spacing: 0.5){
                Text(item.author)
                    .font(.body)
                    .fontWeight(.regular)
                Text(item.name)
                    .font(.title2)
                    .fontWeight(.heavy)
            }
            .padding(20)
            //.padding(.bottom, 40)
            .foregroundColor(Color.white)
            .frame(maxWidth: 175, alignment: .bottomLeading)
            
        }
        .cornerRadius(20)
        //.shadow(radius: 10)
    }
}

struct SearchCanvaMCardView_Previews: PreviewProvider {
    static var previews: some View {
        SearchCanvaMCardView(item: ArtworkModel.defaultArtwork)
    }
}
