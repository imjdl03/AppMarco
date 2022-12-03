//
//  HscrollChicoView.swift
//  MARCO-appFrontEnd
//
//  Created by Paco Guerra on 20/10/22.
//

import SwiftUI

struct HscrollChicoView: View {
    
    @StateObject var ExtraVM = ExtrasViewModel()
    
    var body: some View {
        
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    ForEach(ExtraVM.arrExtras) { item in
                        
                        VStack {
                            VExtraCardView(item: item)
                        }
                        .background(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 20.0))
                        //.shadow(radius: 3)
                        
                    }
                }.padding([.leading, .bottom], 15)
            }
        }
        //.padding()
        .task{
            do {
                try await ExtraVM.getExtrastData()
            }
            catch {
                print("Error HScrollGrandeView")
            }
        }

        
    }
}

struct HscrollChicoView_Previews: PreviewProvider {
    static var previews: some View {
        HscrollChicoView()
    }
}
