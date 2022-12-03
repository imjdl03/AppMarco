//
//  SearchCanvaHCardView.swift
//  MARCO-appFrontEnd
//
//  Created by Ingrid Chávez on 11/8/22.
//

import SwiftUI

struct SearchCanvaHCardView: View {
    let item : ArtworkModel
    
    var body: some View {
        
        ZStack(alignment: .bottomLeading){
            //START Image Box
            Rectangle()
                .frame(minWidth: 350, maxWidth: 350, minHeight: 160, maxHeight: 160)
                .overlay(AsyncImage(url: URL(string: item.artworkImages[0]), content: { image in
                    image.resizable().scaledToFill()
                    
                }, placeholder: {
                    ProgressView()
                    
                })
                    .frame(height: 300)
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
            .frame(maxWidth: 350, alignment: .bottomLeading)
            
        }
        .cornerRadius(20)
        //.shadow(radius: 10)
    }
}

struct SearchCanvaHCardView_Previews: PreviewProvider {
    static var previews: some View {
        SearchCanvaHCardView(item: ArtworkModel.defaultArtwork)
    }
}
