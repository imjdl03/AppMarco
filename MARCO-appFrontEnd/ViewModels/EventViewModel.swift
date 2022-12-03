//
//  EventViewModel.swift
//  MARCO-appFrontEnd
//
//  Created by Jorge on 12/1/22.
//

import Foundation

class EventViewModel : ObservableObject{
    @Published var arrEvents = [EventModel]()
    
    func getEventData() async throws {
        
        //1. Obtiene objeto URL
        guard let url = URL(string : "http://10.14.255.69:10202/events")
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
        let results = try JSONDecoder().decode([EventModel].self, from: data)
        
        //5. Utiliza thread principal para actualizar variable de arrPhotos
        DispatchQueue.main.async{
            self.arrEvents = results
        }
        
    }

}




