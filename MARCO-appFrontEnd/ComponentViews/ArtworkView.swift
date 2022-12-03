//
//  CollectionView.swift
//  MARCO-appFrontEnd
//
//  Created by Sasha Moroz on 18/10/22.
//

import SwiftUI

struct ArtworkView: View {
    
    @State private var showFullDescription : Bool = false
    
    let item : CardModel

    var body: some View {
        ScrollView{
            VStack{
                // START Top Element (Text + Image)
                ZStack(alignment: .bottomLeading){
                    
                    //START Image Box
                    Rectangle()
                        .frame(height: 400)
                        .overlay(AsyncImage(url: URL(string: item.images[0]), content: { image in
                            image.resizable().scaledToFill()
                            
                        }, placeholder: {
                            ProgressView()
                        })
                            .frame(height: 450)
                            .overlay(LinearGradient(gradient: Gradient(colors: [.clear, .clear, .black]), startPoint: .top, endPoint: .bottom)))
                    //END Image Box
                    
            
                    
                    //START Text inside the header image
                    VStack(alignment: .leading, spacing: 1){
                        
                        Text(item.author)
                            .font(.body)
                            .fontWeight(.regular)
                        
                        Text(item.name)
                            .font(.title)
                            .fontWeight(.heavy)
                        
                        
                        Text(item.startDate + " - " + item.endDate)
                            .font(.body)
                            .fontWeight(.regular)
                    }
                    .padding(.leading, 20)
                    .padding(.bottom, 40)
                    .foregroundColor(Color.white)
                    //END Text
                }
                .cornerRadius(40)
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                // END Top Element
                
                //START Article
                VStack(alignment: .leading, spacing: 10){
                    //START Paragraph
                    ZStack{
                        Text(item.description)
                            .multilineTextAlignment(.leading)
                            .lineLimit(showFullDescription ? nil : 10)
                            .padding(.bottom, 20)
                        
                        Button {
                            withAnimation(.easeInOut){
                                showFullDescription.toggle()
                            }
                        } label: {
                            Rectangle()
                                .overlay(LinearGradient(colors: [.clear, (showFullDescription ? .clear : .white)], startPoint: .top, endPoint: .bottom))
                        }
                    } // END Paragraph
                    .accentColor(.clear)
                    .frame(maxWidth: .infinity)
                    
                    //Grey Line
                    Rectangle()
                        .frame(height: 0.5)
                        .foregroundColor(Color.gray)
                    
                    //START Details
                    VStack(alignment: .leading, spacing: 10){
                        
                        HStack(alignment: .top){
                            Text("Curadura: ")
                                .bold()
                            
                            Text("Curador")
                        }
                        
                        HStack(alignment: .top){
                            Text("Museografia: ")
                                .bold()
                            Text("Museo de Arte Conteporaneo de Monterrey")
                        }
                        
                        HStack(alignment: .top){
                            Text("Salas: ")
                                .bold()
                            Text("Patio de Esculturas")
                        }
                        
                        HStack(alignment: .top){
                            Text("Tecnica: ")
                                .bold()
                            Text("Patio de Esculturas")
                        }
                        HStack(alignment: .top){
                            Text("Obras: ")
                                .bold()
                            Text("9 piezas")
                        }
                    }
                    .padding(.top, 10.0)
                    //END Details
                    
                    
                }
                .padding([.leading, .trailing], 20.0)
                .padding(.top, 30)
                
                
                
                Spacer()
                
                
            }
            
        }
        .ignoresSafeArea()
        //END SCROLL
    }
}

struct ArtworkView_Previews: PreviewProvider {
    static var previews: some View {
        CollectionView(item: CardModel.defaultCard)
    }
}
