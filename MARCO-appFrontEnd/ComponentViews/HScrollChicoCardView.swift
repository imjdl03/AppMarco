//
//  HScrollChicoCardView.swift
//  MARCO-appFrontEnd
//
//  Created by Jorge on 12/1/22.
//

import SwiftUI


struct HScrollChicoCardView: View {

    let item : ExtrasModel
    
    var body: some View {
        
        AsyncImage(url: URL(string: item.image)) { phase in
            if let image = phase.image { // 2
                
                // if the image is valid
                image
                    .resizable()
                    .scaledToFill()
                    .frame(width: 160, height: 160)
                //.clipped()
                
                VStack(alignment: .leading) {
                    //Text(" ")
                    Text(item.name)
                        .font(.body)
                        //.allowsTightening(true)
                        .multilineTextAlignment(.leading)
                        .lineLimit(3)
                }
                .padding(.horizontal)
                .frame(width: 160, height: 70)
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

struct HScrollChicoCardView_Previews: PreviewProvider {
    static var previews: some View {
        HScrollChicoCardView(item: ExtrasModel.defaultExtras)
    }
}
