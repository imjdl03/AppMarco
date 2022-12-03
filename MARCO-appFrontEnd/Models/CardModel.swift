//
//  CardModel.swift
//  MARCO-appFrontEnd
//
//  Created by Ingrid Chávez on 10/18/22.
//

import Foundation

struct CardModel : Decodable, Identifiable {
    var id : String
    var name : String
    var author : String
    var startDate : String
    var endDate : String
    var description : String
    var images : [String]
    
    enum CodingKeys : String, CodingKey {
        case id = "_id"
        case name
        case author
        case startDate
        case endDate
        case description
        case images
    }
}

extension CardModel {
    public static var defaultCard = CardModel(id: "Id genérica", name: "Título genérico", author: "Artista genérico", startDate: "Fecha de inicio genérica", endDate: "Fecha de fin genérica", description: "Descripción genérica. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", images: ["https://cdn.britannica.com/51/194651-050-747F0C18/Interior-National-Gallery-of-Art-Washington-DC.jpg"])
}
