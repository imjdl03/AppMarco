//
//  ArtworkPage.swift
//  MARCO-appFrontEnd
//
//  Created by Sasha Moroz on 01/12/22.
//

import SwiftUI

struct ArtworkPage: View {
    
    @State private var showFullDescription : Bool = false
    
    let item : ArtworkModel
    
    //let models : [String] = ["liberty_smooth", "Pig", "liberty_smooth"]
    
    var body: some View {
        
        ScrollView{
            
            VStack{
                // START Top Element (Text + Image)
                ZStack(alignment: .bottomLeading){
                    
                    //START Image Box
                    Rectangle()
                        .frame(height: 400)
                        .overlay(AsyncImage(url: URL(string: item.artworkImages[0]), content: { image in
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
                        
                        
                        Text(item.date)
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
                            .font(.body)
                    } // END Paragraph
                    .accentColor(.clear)
                    .frame(maxWidth: .infinity)
                    .padding([.leading, .trailing], 20.0)
                    
                //START ARTWORK NAVIGATION
   
                Text("Descubre las obras de la colección:")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding([.leading, .trailing], 20.0)
                    .bold()

                //END ARTWORK NAVIGATION
                    
                    
                //Grey Line
                Rectangle()
                    .frame(height: 0.5)
                    .foregroundColor(Color.gray)
                    .padding([.leading, .trailing], 20.0)
                    
                //START Details
                VStack(alignment: .leading, spacing: 10){
                        
                        HStack(alignment: .top){
                            Text("Curadura: ")
                                .font(.body)
                                .bold()
                            
                            Text("Curador")
                                .font(.body)
                        }
                        
                        HStack(alignment: .top){
                            Text("Museografia: ")
                                .font(.body)
                                .bold()
                            Text("Museo de Arte Conteporaneo de Monterrey")
                                .font(.body)
                        }
                        
                        HStack(alignment: .top){
                            Text("Salas: ")
                                .font(.body)
                                .bold()
                            Text("Patio de Esculturas")
                                .font(.body)
                        }
                        
                        HStack(alignment: .top){
                            Text("Tecnica: ")
                                .font(.body)
                                .bold()
                            Text("Patio de Esculturas")
                                .font(.body)
                        }
                        HStack(alignment: .top){
                            Text("Obras: ")
                                .font(.body)
                                .bold()
                            Text("9 piezas")
                                .font(.body)
                        }
                    }
                    .padding(.top, 10.0)
                    .padding(.bottom, 100)
                    .padding([.leading, .trailing], 20.0)
                    //END Details
                    
                    
                }
                //.padding([.leading, .trailing], 20.0)
                .padding(.top, 30)
                
            }
            
        }
        .ignoresSafeArea()
        
        //END SCROLL
    }
    
}

struct ArtworkPage_Previews: PreviewProvider {
    static var previews: some View {
        ArtworkPage(item: ArtworkModel.defaultArtwork)
    }
}
