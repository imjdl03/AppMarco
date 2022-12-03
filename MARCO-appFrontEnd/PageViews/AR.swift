//
//  AR.swift
//  MARCO-appFrontEnd
//
//  Created by Sasha Moroz on 02/12/22.
//
import SwiftUI

struct AR: View {
    var body: some View {
        NavigationView{
            VStack{
                MixedCanvaView()
            }.navigationTitle("Obras en RA")
                .padding(.bottom)
        }
    }
}

struct AR_Previews: PreviewProvider {
    static var previews: some View {
        AR()
    }
}

