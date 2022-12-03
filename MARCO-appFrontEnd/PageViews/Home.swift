//
//  Home.swift
//  MARCO-appFrontEnd
//
//  Created by Ingrid Chávez on 10/18/22.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .leading){
//                    Text("Exposiciones actuales")
//                        .font(.title)
//                        .fontWeight(.heavy)
//                        .padding(.leading)
                    HScrollGrandeView()
                        .padding(.bottom)
                    Text("Colección MARCO")
                        .font(.title)
                        .fontWeight(.heavy)
                        .padding(.leading)
                    VScrollChicoView()
                        //.padding(.top)
                        //.frame(height: 450)
                    Text("Conoce más")
                        .font(.title)
                        .fontWeight(.heavy)
                        .padding(.leading)
                    HscrollChicoView()
                }
            }.navigationTitle("Exposiciones")
                .padding(.horizontal, 10)
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
