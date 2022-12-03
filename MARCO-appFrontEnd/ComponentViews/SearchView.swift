
//  SearchScroll.swift
//  MARCO-appFrontEnd
//
//  Created by Jorge on 11/30/22.
//


import SwiftUI

struct SearchVIew: View {
    
    @State private var searchText = ""
  
    @StateObject var searchVM = ArtworkViewModel()
    
    @State var isSearching: Bool = false
    
    var body: some View {
        NavigationView{
            ScrollView{
                
                VStack(){
                    ForEach(getSearchResults){item in
                            NavigationLink(destination: ArtworkPageView(item: item), label: {
                                
                                SearchCardView(item: item)
                                
                            })

                        
                        
                    }
                }
                
                
                
            }
            .navigationTitle("Obras de Arte").padding(.horizontal, 10)
            .searchable(text: $searchText, prompt: "Busca obras")
                .padding(.top)
                .font(.body)
            .task{
                do{
                    try await searchVM.getArtworkData()
                    print(getSearchResults)
                } catch{
                    print("error calling api")
                }
            }
        }
        
        
        
    }
    
//    @StateObject var CardVM = CardViewModel()
//
//    var body: some View {
//        VStack() {
//            ForEach(CardVM.arrCards.prefix(3)) { item in
//                VScrollChicoCardView(item: item)
//            }.shadow(radius: 0)
//                .padding(.leading, 15)
//        }
//        //.padding(.top)
//        .task{
//            do {
//                try await CardVM.getCardData()
//            }
//            catch {
//                print("Error HScrollGrandeView")
//            }
//        }
//    }
    
    var getSearchResults: [ArtworkModel]{
        if searchText.isEmpty {
            return searchVM.arrArtwork
        } else {
            return searchVM.arrArtwork.filter { $0.name.contains(searchText)}
            }
        }
}

struct SearchScroll_Previews: PreviewProvider {
    static var previews: some View {
        VScrollChicoView()
    }
}
