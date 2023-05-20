//
//  CardsManager.swift
//  MagicApp
//
//  Created by Francisco Lucena de Juan on 21/5/23.
//

import Foundation

protocol CardsManager {
    func getCards() async -> (cards: Cards?, error: Error?)
}

extension ServerManager: CardsManager {
    
    func getCards() async -> (cards: Cards?, error: Error?) {
        let response = await APIManager.getCards()
        if let cardsResponse = response.cardsResponse {
            let cards: Cards = Cards(cardsResponse: cardsResponse)
            return (cards: cards, error: response.error)
        } else {
            return (cards: nil, error: response.error)
        }
    }
}
