//
//  CardsProvider.swift
//  MagicApp
//
//  Created by Francisco Lucena de Juan on 21/5/23.
//

import Foundation

class CardsProvider {
    let manager: CardsManager = ServerManager.shared
    
    func getCards() async -> (cards: Cards?, error: Error?) {
        await manager.getCards()
    }
}
