//
//  HomeService.swift
//  ChefDelivery
//
//  Created by Yuri Cunha on 16/12/23.
//

import Foundation

enum RequestError: Error {
    case invalidURL
    case errorRequest(error: String?)
}

struct HomeService {
    func fetchData() async throws -> Result<[StoreType],RequestError> {
        let stringURL = "https://private-7815e6-vollmed.apiary-mock.com/home"
        guard let url = URL(string: stringURL) else { return .failure(.invalidURL)}
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        let (data,_) = try await URLSession.shared.data(for: request)
        let storedObjects = try JSONDecoder().decode([StoreType].self, from: data)
        
        return .success(storedObjects)
    }
}
