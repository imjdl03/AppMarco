//
//  Collections.swift
//  MARCO-appFrontEnd
//
//  Created by Paco Guerra on 20/10/22.
//

import SwiftUI

struct Collections: View {

    @StateObject var ExpoVM = ExpoViewModel()
    
    private let adaptiveColumns = [
        GridItem(.adaptive(minimum: 160))
    ]
    
    @State private var searchText = ""

    var body: some View {
        
        NavigationView {
                
            ScrollView {
                
                LazyVGrid(columns: adaptiveColumns, spacing: 20) {
                    
                    ForEach(ExpoVM.arrExpos) { item in
                        
                        NavigationLink(destination: CollectionView(item: item), label: {
                            
                            VStack(alignment: .leading) {
                                
                                CollectionItemView(item: item)
                                
                            }
                            .background(Color.white)
                            .clipShape(RoundedRectangle(cornerRadius: 20.0))
                            .shadow(color: Color(white: 0.9), radius: 15)
                            
                        })
                        
                    }
                    
                }.searchable(text: $searchText, prompt: "Look for something")
                    .padding(.top)
                
            }.navigationTitle("Colecciones")
                .task {
                    do {
                        try await ExpoVM.getExpoData()
                    } catch {
                        print("error1")
                    }
                }
            
        }
        
        
    }
}

struct Collections_Previews: PreviewProvider {
    static var previews: some View {
        Collections()
    }
}
