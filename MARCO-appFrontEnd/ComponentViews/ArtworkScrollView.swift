//
//  ArtworkScrollView.swift
//  MARCO-appFrontEnd
//
//  Created by Sasha Moroz on 29/11/22.
//

import SwiftUI

struct ArtworkScrollView: View {
    
    @StateObject var artworkVM = ArtworksPerCollectionViewModel()
    let item : ExpoModel
    
    var body: some View {
        
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 15) {
                    ForEach(artworkVM.arrArtwork) { item in
                        NavigationLink(destination: ArtworkPageView(item: item)) {
                            ArtworkCardView(item: item)
                    
                        }
                        
                    }
                }.padding(.leading, 15)
            }
        }
        //.padding()
        .task{
            do {
                try await artworkVM.getArtworkData(expo_ID: item.id)
            }
            catch {
                print("Error ArtworkScrollView")
            }
        }

        
    }
}

struct ArtworkScrollView_Preview: PreviewProvider {
    static var previews: some View {
        ArtworkScrollView(item: ExpoModel.defaultExpo)
    }
}
