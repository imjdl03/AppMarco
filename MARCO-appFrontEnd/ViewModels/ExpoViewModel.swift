//
//  ExpoViewModel.swift
//  MARCO-appFrontEnd
//
//  Created by Ingrid Chávez on 11/15/22.
//

import Foundation

class ExpoViewModel : ObservableObject{
    @Published var arrExpos = [ExpoModel]()
    
    func getExpoData() async throws {
        
        //1. Obtiene objeto URL
        guard let url = URL(string : "http://10.14.255.69:10202/expositions")
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
            print("Error here!")
            return
        }
        
        //4. Decodifica la informacion de formato JSON a variable de resultados
        let results = try JSONDecoder().decode([ExpoModel].self, from: data)
        
        //5. Utiliza thread principal para actualizar variable de arrPhotos
        DispatchQueue.main.async{
            self.arrExpos = results
        }
        
    }

}



