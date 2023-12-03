//
//  Country.swift
//  MilestoneProjects13-15
//
//  Created by Антон Кашников on 18/11/2023.
//

struct Country: Decodable {
    let name: Name
    let area: Double
    let region: String
    let population: Int
    let flag: String
    let capital: [String]?
//    let flags: Flags
}

struct Name: Decodable {
    let official: String
}

struct Flags: Codable {
    let png: String
    let svg: String
    let alt: String
}

//struct Currency: Decodable {
//    let name: String
//    let symbol: String
//}

enum CodingKeys: String, CodingKey {
    case code = "alpha2Code"
}
