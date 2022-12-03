//
//  ARScrollView.swift
//  MARCO-appFrontEnd
//
//  Created by Sasha Moroz on 28/11/22.
//

import SwiftUI

struct ArtworkCardView: View {
    
    let item : ArtworkModel
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomLeading){
                //START Image Box
                Rectangle()
                    .frame(width: 250, height: 150)
                    .overlay(AsyncImage(url: URL(string: item.iconAR), content: { image in
                        image.resizable().scaledToFill()
                        
                    }, placeholder: {
                        ProgressView()
                        
                    })
                        .frame(height: 250)
                        .overlay(LinearGradient(gradient: Gradient(colors: [.clear, .black]), startPoint: .top, endPoint: .bottom)))
                        .cornerRadius(25)
                
                //Text inside the header image
                VStack(alignment: .leading, spacing: 0.5){
                    Text(item.author)
                        .font(.body)
                        .lineLimit(2)
                        .multilineTextAlignment(.leading)
                        .fontWeight(.regular)
                    Text(item.name)
                        .font(.title2)
                        .lineLimit(2)
                        .multilineTextAlignment(.leading)
                        .fontWeight(.heavy)
                    
                }
                .padding(30)
                //.padding(.bottom, 40)
                .foregroundColor(Color.white)
                .frame(maxWidth: 250, minHeight: 20, alignment: .bottomLeading)
                
            }
            
            //.shadow(radius: 10)
        }
    }
}

struct ArtworkCardView_Previews: PreviewProvider {
    static var previews: some View {
        ArtworkCardView(item: ArtworkModel.defaultArtwork)
    }
}
