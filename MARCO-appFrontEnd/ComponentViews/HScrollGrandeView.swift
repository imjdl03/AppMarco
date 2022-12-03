//
//  HScrollGrandeView.swift
//  MARCO-appFrontEnd
//
//  Created by Ingrid Chávez on 10/18/22.
//

import SwiftUI

struct HScrollGrandeView: View {
    
    @StateObject var ExpoVM = ExpoViewModel()
    
    var body: some View {
        VStack {
            ScrollView(.horizontal,showsIndicators: false) {
                HStack() {
                    ForEach(ExpoVM.arrExpos) { item in
                        NavigationLink(destination: CollectionView(item: item), label: {
                            
                            HScrollGrandeCardView(item: item)
                                .padding(.leading, 15)
                            
                        })
                        
                    }.shadow(radius: 0)
                }
            }
        }
        //.padding()
        .task{
            do {
                try await ExpoVM.getExpoData()
            }
            catch {
                print("Error HScrollGrandeView")
            }
        }
    }
}

struct HScrollGrande_Previews: PreviewProvider {
    static var previews: some View {
        HScrollGrandeView()
    }
}
