//
//  HScrollGrandeCardView.swift
//  MARCO-appFrontEnd
//
//  Created by Ingrid Chávez on 10/19/22.
//

import SwiftUI

struct HScrollGrandeCardView: View {
    
    let item : ExpoModel
    
    var body: some View {
        
        ZStack(alignment: .bottomLeading){
            //START Image Box
            Rectangle()
                .frame(minWidth: 370, maxWidth: 370, minHeight: 300, maxHeight: 300)
                .overlay(AsyncImage(url: URL(string: item.expoImages[0]), content: { image in
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
                Text(item.startDate)
                    .font(.body)
                    .fontWeight(.regular)
                
            }
            .padding(30)
            //.padding(.bottom, 40)
            .foregroundColor(Color.white)
            .frame(maxWidth: 370, minHeight: 20, alignment: .bottomLeading)
            
        }
        .cornerRadius(25)
        //.shadow(radius: 10)
    }
}

struct CarrouselItem_Previews: PreviewProvider {
    static var previews: some View {
        HScrollGrandeCardView(item: ExpoModel.defaultExpo)
    }
}
