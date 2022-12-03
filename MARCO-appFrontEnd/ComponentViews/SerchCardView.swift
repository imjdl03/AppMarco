
//
//  SearchCardView.swift
//  MARCO-appFrontEnd
//
//  Created by Jorge on 11/30/22.
//

import SwiftUI

struct SearchCardView: View {
    
    let item : ArtworkModel
    
    var body: some View {
        HStack(spacing: 0){
            AsyncImage(url: URL(string: item.artworkImages[0])) { image in
                image
                    .resizable()
                    .scaledToFill()
            } placeholder:{
                Color.gray
    
            }
            .frame(width: 130, height: 130)
            
            ZStack(alignment: .leading){
                Rectangle()
                    .frame(width: 230, height: 130)
                    .foregroundColor(Color("CardGrey"))
                
                VStack(alignment: .leading, spacing: 0.1){
                    Text(item.author)
                        .font(.body)
                        .fontWeight(.regular)
                    Text(item.name)
                        .font(.title2)
                        .fontWeight(.heavy)
                        .lineLimit(1)
                    Text(item.date)
                        .font(.body)
                        .fontWeight(.regular)
                    
                }
                .padding(.leading, 20)
                .foregroundColor(Color.black)
                .frame(maxWidth: 220, alignment: .bottomLeading)
            }
        }.cornerRadius(15)
    }
}

struct SearchCardView_Previews: PreviewProvider {
    static var previews: some View {
        SearchCardView(item: ArtworkModel.defaultArtwork)
            }
}
