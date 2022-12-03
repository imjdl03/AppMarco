//
//  CardViewModel.swift
//  MARCO-appFrontEnd
//
//  Created by Ingrid Chávez on 10/18/22.
//

import Foundation

class CardViewModel : ObservableObject{
    @Published var arrCards = [CardModel]()
    
    func getCardData() async throws {
        
        //1. Obtiene objeto URL
        guard let url = URL(string : "https://admin.marco.org.mx/api/expos")
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
        let results = try JSONDecoder().decode([CardModel].self, from: data)
        
        //5. Utiliza thread principal para actualizar variable de arrPhotos
        DispatchQueue.main.async{
            self.arrCards = results
            //let card1 = self.arrCards[1]
            //print(card1)
        }
        
    }

}


