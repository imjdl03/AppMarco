//
//  VScrollGrandeView.swift
//  MARCO-appFrontEnd
//
//  Created by Ingrid Chávez on 10/20/22.
//

import SwiftUI

struct VScrollChicoView: View {
    
    @StateObject var ExpoVM = ExpoViewModel()
    
    var body: some View {
        VStack() {
            ForEach(ExpoVM.arrExpos.prefix(3)) { item in
                NavigationLink(destination: CollectionView(item: item), label: {
                    
                    VScrollChicoCardView(item: item)
                        
                    
                })
                
                
            }.shadow(radius: 0)
                .padding(.leading, 15)
        }
        //.padding(.top)
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

struct VScrollChicoView_Previews: PreviewProvider {
    static var previews: some View {
        VScrollChicoView()
    }
}



