//
//  CollectionView.swift
//  MARCO-appFrontEnd
//
//  Created by Sasha Moroz on 18/10/22.
//

import SwiftUI

struct ArtworkPageView: View {
    
    @State private var showFullDescription : Bool = false
    @State private var arURL : String = ""
    
    let item : ArtworkModel

        
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
                

                
                
                //START ARTICLE TEXT
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
                //END ARTICLE TEXT
                
                //START PHOTO SECTION
                ArtworkImagesScrollView(item: item)
                //END PHOTO SECTION
                
                Spacer()
                    
                //START AR QUICK LOOK
                    Text("Pruebalo en Realidad Aumentada")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .padding([.leading, .leading])
                    
                    NavigationLink(destination: ARContentView(c: arURL)) {
                        ARCardView(item: item)
                            .padding([.leading, .leading])
                    }
                //END AR QUICK LOOK LIST
                    
                }
                //.padding([.leading, .trailing], 20.0)
                .padding(.top, 30)
                
            }
            
        }
        .ignoresSafeArea(.container, edges: .top)
        .task {
            
            downloadSampleUSDZ(url: item.ar) { result in
                self.arURL = result
            }

        }
        
        //END SCROLL
    }
    func downloadSampleUSDZ(url: String, completition: @escaping (String) -> Void ) {
        
        guard let url = URL(string: url) else {
            return
        }
        
        let downloadTask = URLSession.shared.downloadTask(with: url) { urlOrNil, responseOrNil, errorOrNil in
         
        print("TERMINO LA DESCARGA")
            
        guard let fileURL = urlOrNil else { return }
            
        print("Sasha || fileURL\(fileURL)")
            
         do {
             let documentsURL = try
                 FileManager.default.url(for: .documentDirectory,
                                         in: .userDomainMask,
                                         appropriateFor: nil,
                                         create: false)
             let savedURL = documentsURL.appendingPathComponent(url.lastPathComponent)
             
             print("VA A CHECAR")
             if FileManager.default.fileExists(atPath: savedURL.path){
                 print("ELEMENTO EXISTE")
                 try FileManager.default.removeItem(atPath: savedURL.path)

             }
             try FileManager.default.moveItem(at: fileURL, to: savedURL)
             
             completition(savedURL.absoluteString)
         } catch {
             print ("file error: \(error)")
         }
     }
     downloadTask.resume()
     print("EMPEZO LA DESCARGA")
    }
    
}

struct ArtworkPageView_Previews: PreviewProvider {
    static var previews: some View {
        ArtworkPageView(item: ArtworkModel.defaultArtwork)
    }
}
