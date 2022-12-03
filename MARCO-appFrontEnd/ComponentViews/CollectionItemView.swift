//
//  CollectionItemView.swift
//  MARCO-appFrontEnd
//
//  Created by Paco Guerra on 20/10/22.
//

import SwiftUI

struct CollectionItemView: View {

    let item : ExpoModel
    
    var body: some View {
        
        AsyncImage(url: URL(string: item.expoImages[0])) { phase in
            if let image = phase.image { // 2
                
                // if the image is valid
                image
                    .resizable()
                    .scaledToFill()
                    .frame(width: 160, height: 160)
                //.clipped()
                
                VStack(alignment: .leading) {
                    Text(item.author)
                        .font(.body)
                        .fontWeight(.regular)
                        .font(.headline)
                        .fontWeight(.heavy)
                        .allowsTightening(true)
                        .lineLimit(1)
                        .scaledToFit()
                    Text(item.name)
                        .font(.headline)
                        .fontWeight(.heavy)
                        .allowsTightening(true)
                        .scaledToFit()
                    Text(item.startDate.uppercased())
                        .font(.subheadline)
                        .fontWeight(.regular).padding(.bottom, 16)
                }
                .padding(.horizontal)
                .frame(width: 160)
                .background(.white)
                .foregroundColor(.black)
                
            } else if phase.error != nil { // 3
                // some kind of error appears
                Image(systemName: "questionmark")
                    .font(.headline)
                
            } else { // 4
                // showing progress view as placeholder
                ProgressView()
                    .font(.largeTitle)
            }
        }
        
    }
}

struct CollectionItemView_Previews: PreviewProvider {
    static var previews: some View {
        CollectionItemView(item: ExpoModel.defaultExpo)
    }
}
