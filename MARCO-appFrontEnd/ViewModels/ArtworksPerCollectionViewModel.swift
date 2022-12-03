//
//  ArtworksPerCollectionViewModel.swift
//  MARCO-appFrontEnd
//
//  Created by Sasha Moroz on 01/12/22.
//

import Foundation

import Foundation

class ArtworksPerCollectionViewModel : ObservableObject{
    
    @Published var arrArtwork = [ArtworkModel]()
    
    
    func getArtworkData(expo_ID : String) async throws {
        
        //1. Obtiene objeto URL
        guard let url = URL(string : "http://10.14.255.69:10202/artworks/byExposition/" + expo_ID)
        else{
            print("Invalid URL")
            return
        }
        
        //2. Prepara REQUEST a pagina http con URL
        let urlRequest = URLRequest(url: url)
        
        //3. Realiza llamada con URLSession
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        print(data)
        
        guard (response as? HTTPURLResponse)?.statusCode == 200
        else{
            print("Error here1")
            return
        }
        
        //4. Decodifica la informacion de formato JSON a variable de resultados
        let results = try JSONDecoder().decode([ArtworkModel].self, from: data)
        
        //5. Utiliza thread principal para actualizar variable de arrPhotos
        DispatchQueue.main.async{
            self.arrArtwork = results
        }
        
    }

}
