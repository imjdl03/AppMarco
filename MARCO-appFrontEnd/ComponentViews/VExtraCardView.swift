//
//  VScrollChicoCardView.swift
//  MARCO-appFrontEnd
//
//  Created by Jorge on 10/20/22.
//
import SwiftUI

struct VExtraCardView: View {
    
    let item : ExtrasModel
    
    var body: some View {
        VStack(spacing: 0){
            AsyncImage(url: URL(string: item.image)) { image in
                image
                    .resizable()
                    .scaledToFill()
            } placeholder:{
                Color.gray
    
            }
            .frame(width: 150, height: 130)
            //.cornerRadius(15)
            Link(destination: item.URL, label: {
                ZStack(){
                    Rectangle()
                        .frame(width: 150, height: 70)
                        .foregroundColor(Color("CardGrey"))
                    
                    VStack(alignment: .leading, spacing: 0.1){
                        Text(item.name)
                            .font(.headline)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.leading)
                            .lineLimit(nil)
                    }
                    .padding(.leading, 15)
                    //.padding(.top, 10)
                    .foregroundColor(Color.black)
                    .frame(maxWidth: 145, maxHeight: 50, alignment: .leading)
                }//.cornerRadius(15)
            })
        }.cornerRadius(15)
    }
}

struct VExtraCardView_Previews: PreviewProvider {
    static var previews: some View {
        VExtraCardView(item: ExtrasModel.defaultExtras)
            }
}


