//
//  movies.swift
//  MovieAppP10Entrainement
//
//  Created by Adam Mabrouki on 21/11/2020.
//

import Foundation

// MARK: - Welcome
struct Welcome: Codable {
    let items: [Item]
    let errorMessage: String
}

// MARK: - Item
struct Item: Codable {
    public let id, rank, title, fullTitle: String
    public let year: String
   public let image: String
    public let crew, imDBRating, imDBRatingCount: String

    enum CodingKeys: String, CodingKey {
        case id, rank, title, fullTitle, year, image, crew
        case imDBRating = "imDbRating"
        case imDBRatingCount = "imDbRatingCount"
    }
}
