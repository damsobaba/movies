//
//  NetworkError.swift
//  MovieAppP10Entrainement
//
//  Created by Adam Mabrouki on 21/11/2020.
//

import Foundation

enum NetworkError: Error, CustomStringConvertible {
    case noData
    case noResponse
    case undecodableData

    var description: String {
        switch self {
        case .noData:
            return "There is no data !"
        case .noResponse:
            return "Response status is incorrect !"
        case .undecodableData:
            return "Data can't be decoded !"
        }
    }
}
