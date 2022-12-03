//
//  VScrollGrandeCardView.swift
//  MARCO-appFrontEnd
//
//  Created by Jorge on 12/1/22.
//

import SwiftUI

struct VScrollGrandeCardView: View {
    
    let item : EventModel
    
    var body: some View {
        
        
        ZStack(alignment: .bottomLeading){
            //START Image Box
            Rectangle()
                .frame(minWidth: 380, maxWidth: 380, minHeight: 300, maxHeight: 300)
                .overlay(AsyncImage(url: URL(string: item.image), content: { image in
                    image.resizable().scaledToFill()
                    
                }, placeholder: {
                    ProgressView()
                    
                })
                    .frame(height: 300)
                    .overlay(LinearGradient(gradient: Gradient(colors: [.clear, .black]), startPoint: .top, endPoint: .bottom)))
            
            // LinearGradient(gradient: Gradient(colors: [.clear, .black]), startPoint: .top, endPoint: .bottom)
            
            Link(destination: item.url, label: {
                //Text inside the header image
                VStack(alignment: .leading, spacing: 0.5){
                    Text(item.author)
                        .font(.body)
                        .fontWeight(.regular)
                    Text(item.name)
                        .font(.title2)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.leading)
                    Text(item.startDate)
                        .font(.body)
                        .fontWeight(.regular)
                    }
            })
            .padding(30)
            //.padding(.bottom, 40)
            .foregroundColor(Color.white)
            .frame(maxWidth: 380, minHeight: 20, alignment: .bottomLeading)
            
        }
        .cornerRadius(40)
        //.shadow(radius: 10)
    }
}

struct VScrollGrandeCardView_Previews: PreviewProvider {
    static var previews: some View {
        VScrollGrandeCardView(item: EventModel.defaultExpo)
    }
}
