//
//  CardsManager.swift
//  MagicApp
//
//  Created by Francisco Lucena de Juan on 20/5/23.
//

import Foundation

class APIManager {
    
    static func getCards() async -> (cardsResponse: CardsResponse?, error: Error?) {
        do {
            let data = try await ServerManager.shared.request(Constants.cardsURL)
            let result: CardsResponse = try JSONDecoder().decode(CardsResponse.self, from: data)
            return (result, nil)
        } catch let error {
            print(error.localizedDescription)
            return(nil, error)
        }
    }
}
