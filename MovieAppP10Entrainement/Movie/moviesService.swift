//
//  moviesService.swift
//  MovieAppP10Entrainement
//
//  Created by Adam Mabrouki on 21/11/2020.
//

import Foundation


class MovieService {
    
    // MARK: - Propreties
    
    private let httpClient: HTTPClient
    
    init(httpClient: HTTPClient = HTTPClient()){
        self.httpClient = httpClient
    }
    
    // MARK: - Netwok call
    
    
    func getMovie(callback: @escaping (Result<Welcome,NetworkError>) -> Void) {
        
        guard let url = URL(string:"https://imdb-api.com/en/API/Top250Movies/k_pt227v5l") else {return}
        
        httpClient.request(baseUrl: url, parameters: nil)  { (result: Result<Welcome, NetworkError>) in
            switch result {
            case .success(let data):
                callback(.success(data))
            case .failure(let error):
                callback(.failure(error))
            }
        }
    }
}


