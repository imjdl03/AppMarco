//
//  EventModel.swift
//  MARCO-appFrontEnd
//
//  Created by Jorge on 12/1/22.
//

import Foundation

struct EventModel : Decodable, Identifiable {
    var id : String
    var name : String
    var author : String
    var startDate : String
    var endDate : String
    var image : String
    var url : URL
    
    
    enum CodingKeys : String, CodingKey {
        case id = "_id"
        case name
        case author
        case startDate
        case endDate
        case image
        case url
    }
}

extension EventModel {
    public static var defaultExpo = EventModel(id: "Id genérica",
                                            name: "Título genérico",
                                            author: "Artista genérico",
                                            startDate: "Fecha generica",
                                            endDate: "Fecha generica de fin",
                                            image: "imagen generica",
                                            url: Foundation.URL(string: "http://10.14.255.69:10202/da3ea13a-ceaf-4b1b-9340-3654ece11e7e.jpeg")!
                                              )
}

