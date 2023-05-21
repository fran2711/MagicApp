//
//  CardsListInteractor.swift
//  Xfera
//
//  Created by Francisco Lucena de Juan on 21/5/23.
//  Copyright © 2020 Xfera Consumer Finance EFC SA. All rights reserved.
//

import Foundation

class CardsListInteractor : CardsListInteractorProtocol {
    var presenter: CardsListPresenterProtocol?
    
    func getCardList() {
        Task {
            let response = await CardsProvider().getCards()
            
            
            if let error = response.error {
                DispatchQueue.main.async { [weak self] in
                    self?.presenter?.showError(error: error)
                }
            } else if let cards = response.cards {
                DispatchQueue.main.async { [weak self] in
                    self?.presenter?.updateListWithCards(cards: cards)
                }
            }
        }
    }
}
