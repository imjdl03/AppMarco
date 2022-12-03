//
//  ArtworkImagesScrollView.swift
//  MARCO-appFrontEnd
//
//  Created by Sasha Moroz on 01/12/22.
//

import SwiftUI

struct ArtworkImagesScrollView: View {
    
    let  item : ArtworkModel
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack{
                
                Spacer()
                Spacer()
                
                ForEach(item.artworkImages, id: \.self) { image in
                    Rectangle()
                        .frame(width: 300, height: 300)
                        .overlay(AsyncImage(url: URL(string: image), content: { image in
                            image
                                .resizable()
                                .scaledToFill()
                            
                        }, placeholder: {
                            ProgressView()
                            
                        }))
                        .padding(.horizontal)
                        .cornerRadius(30)
                
                }
            }
        }
    }
}

struct ArtworkImagesScrollView_Previews: PreviewProvider {
    static var previews: some View {
        ArtworkImagesScrollView(item: ArtworkModel.defaultArtwork)
    }
}
