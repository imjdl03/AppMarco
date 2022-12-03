//
//  ARScrollView.swift
//  MARCO-appFrontEnd
//
//  Created by Sasha Moroz on 28/11/22.
//

import SwiftUI

struct ARCardView: View {
    
    let item : ArtworkModel
    
    var body: some View {
        VStack {
            
            ZStack(alignment: .topTrailing){
                //START Image Box
                
                Rectangle()
                    .frame(width: 380, height: 150)
                    .overlay(AsyncImage(url: URL(string: item.iconAR), content: { image in
                        image.resizable().scaledToFill()
                        
                    }, placeholder: {
                        ProgressView()
                        
                    })
                        .frame(height: 350)
                        .overlay(LinearGradient(gradient: Gradient(colors: [.clear, .black]), startPoint: .top, endPoint: .bottom)))
                        .cornerRadius(25)
                
                // LinearGradient(gradient: Gradient(colors: [.clear, .black]), startPoint: .top, endPoint: .bottom)
                
                
                Image("ar_icon")
                    .resizable()
                    .frame(width: 50.0, height: 50.0)
                    .padding(.top, 20)
                    .padding(.horizontal, 20)
                
                
                //Text inside the header image
                VStack(alignment: .leading){
                    Text(item.author)
                        .font(.body)
                        .fontWeight(.regular)
                    Text(item.name)
                        .font(.title2)
                        .fontWeight(.heavy)
                    
                }
                //.padding(.bottom, 40)
                .foregroundColor(Color.white)
                .padding(.top, 80)
                .padding(.horizontal, 30)
                .frame(maxWidth: 380, minHeight: 20, alignment: .bottomLeading)
            
                
            }
            
        }
    }
}

struct ARCardView_Previews: PreviewProvider {
    static var previews: some View {
        ARCardView(item: ArtworkModel.defaultArtwork)
    }
}
