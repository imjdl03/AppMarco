//
//  VScrollGrandeView.swift
//  MARCO-appFrontEnd
//
//  Created by Ingrid Chávez on 10/20/22.
//

import SwiftUI

struct VScrollGrandeView: View {
    
    let title : String
    @StateObject var EventVM = EventViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {

                VStack(spacing: 15) {
                    ForEach(EventVM.arrEvents) { item in
                       // NavigationLink(destination: CollectionView(item: item)) {
                            VScrollGrandeCardView(item: item)
                        //}
                    }//.shadow(radius: 3)
                }
            }.navigationTitle("Proximos Eventos").padding(.horizontal, 10)
        }
        //.padding()
        .task{
            do {
                try await EventVM.getEventData()
            }
            catch {
                print("Error HScrollGrandeView")
            }
        }
    }
}

struct VScrollGrandeView_Previews: PreviewProvider {
    static var previews: some View {
        VScrollGrandeView(title:"Calendario")
    }
}


