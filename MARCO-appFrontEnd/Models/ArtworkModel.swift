//
//  ArtworkModel.swift
//  MARCO-appFrontEnd
//
//  Created by Sasha Moroz on 29/11/22.
//

import Foundation

struct ArtworkModel : Decodable, Identifiable {
    
    var id : String
    var name : String
    var author : String
    var description : String
    var date : String
    var artworkImages : [String]
    var ar : String
    var iconAR : String
    var expo_ID : String
    
    enum CodingKeys : String, CodingKey {
        case id = "_id"
        case name
        case author
        case description
        case date
        case artworkImages
        case ar
        case iconAR
        case expo_ID
    }
}

extension ArtworkModel {
    public static var defaultArtwork = ArtworkModel(id : "Generic ID", name: "Libertad", author: "Pedro Reyes", description: "Descripción genérica. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", date: "20/20/2022", artworkImages: ["http://10.14.255.69:10202/Lady-Liberty_y_Lenin_as-sleeping-muse.jpg", "http://10.14.255.69:10202/REYE_MARCO_bulletin.jpg"], ar: "http://10.14.255.69:10202/liberty_smooth.usdz", iconAR: "http://10.14.255.69:10202/REYE_MARCO_bulletin.jpg", expo_ID: "63865bd293564d6448e96bdc")
}
