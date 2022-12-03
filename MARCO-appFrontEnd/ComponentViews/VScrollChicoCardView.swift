//
//  VScrollChicoCardView.swift
//  MARCO-appFrontEnd
//
//  Created by Jorge on 10/20/22.
//
import SwiftUI

struct VScrollChicoCardView: View {
    
    let item : ExpoModel
    
    var body: some View {
        HStack(spacing: 0){
            AsyncImage(url: URL(string: item.expoImages[0])) { image in
                image
                    .resizable()
                    .scaledToFill()
            } placeholder:{
                Color.gray
    
            }
            .frame(width: 140, height: 130)
            
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
                        .multilineTextAlignment(.leading)
                        .lineLimit(nil)
                    Text(item.startDate)
                        .font(.body)
                        .fontWeight(.regular)
                    
                }
                .padding(.leading, 15)
                .foregroundColor(Color.black)
                .frame(maxWidth: 230, alignment: .bottomLeading)
            }
        }.cornerRadius(15)
    }
}

struct VScrollChico_Previews: PreviewProvider {
    static var previews: some View {
        VScrollChicoCardView(item: ExpoModel.defaultExpo)
            }
}

