//
//  ExtrasModel.swift
//  MARCO-appFrontEnd
//
//  Created by Jorge on 12/1/22.
//

import SwiftUI

struct ExtrasModel : Decodable, Identifiable {
    var id : String
    var name : String
    var image : String
    var URL : URL
    
    
    enum CodingKeys : String, CodingKey {
        case id = "_id"
        case name
        case image
        case URL
    }
}

extension ExtrasModel {
    public static var defaultExtras = ExtrasModel(id: "Id genérica",
                                            name: "Título genérico",
                                            image: "imagen generica",
                                            URL: Foundation.URL(string: "http://10.14.255.69:10202/da3ea13a-ceaf-4b1b-9340-3654ece11e7e.jpeg")!)
}
