//
//  NetworkService.swift
//  AvitoTech
//
//  Created by Владислав Головачев on 02.09.2024.
//

import Foundation

protocol NetworkServiceProtocol {
    func getAdScreenInfo(completion: @escaping (Result<AdScreenInfo, Error>) -> Void)
}

struct NetworkService: NetworkServiceProtocol {
    func getAdScreenInfo(completion: @escaping (Result<AdScreenInfo, Error>) -> Void) {
        do {
            let data = JSONDataToParse.data
            let response = try JSONDecoder().decode(AdScreenResponse.self, from: data)
            completion(.success(response.result))
        } catch {
            completion(.failure(error))
        }
    }
}
