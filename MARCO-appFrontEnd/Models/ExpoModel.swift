
import Foundation

struct ExpoModel : Decodable, Identifiable {
    var id : String
    var name : String
    var author : String
    var description : String
    var startDate : String
    var endDate : String
    var curatorship : String
    var museography : String
    var location : String
    var technique : String
    var totalPieces : String
    var expoImages : [String]
    var authorImages : [String]
    var isActive : Bool
    
    
    enum CodingKeys : String, CodingKey {
        case id = "_id"
        case name
        case author
        case description
        case startDate
        case endDate
        case curatorship
        case museography
        case location
        case technique
        case totalPieces
        case expoImages
        case authorImages
        case isActive
    }
}

extension ExpoModel {
    public static var defaultExpo = ExpoModel(id: "Id genérica",
                                              name: "Título genérico",
                                              author: "Artista genérico",
                                              description: "Descripcion generica",
                                              startDate: "Fecha generica",
                                              endDate: "Fecha generica de fin",
                                              curatorship: "Curatorship generico",
                                              museography: "Museografia generica",
                                              location: "Location generica",
                                              technique: "Tecnica generica",
                                              totalPieces: "TotalPieces generico",
                                              expoImages: ["url1generico",
                                                           "url2generico",
                                                           "url3generico"],
                                              authorImages: ["url1generico",
                                                             "url2generico",
                                                             "url3generico"],
                                              isActive: true
                                              )
}
