//
//  CardsListPresenter.swift
//  MagicApp
//
//  Created by Francisco Lucena de Juan on 21/5/23.
//  Copyright © 2023 Francisco Lucena. All rights reserved.
//

import Foundation
import UIKit

class CardsListPresenter: BasePresenterProtocol {
    
    var view: CardsListViewProtocol?
    var interactor: CardsListInteractorProtocol?
    var router: CardsListRouterProtocol?
    
    func viewDidLoad() {
        getCardList()
    }
    
    func getCardList() {
        self.showLoading()
        interactor?.getCardList()
    }

}

extension CardsListPresenter: CardsListPresenterProtocol {
    func updateListWithCards(cards: Cards) {
        self.hideLoading()
        view?.showCards(cards: cards.cards)
    }
    
    func showLoading() {
        view?.showLoading({
            self.getCardList()
        })
    }
    
    func hideLoading() {
        view?.hideLoading()
    }
    
    func showError(error: String) {
        if let alert = view?.errorAlert(errorMessage: error, title: "Error") {
            let done = UIAlertAction(title: Constants.done, style: .default)
            let retry = UIAlertAction(title: Constants.retry, style: .default) { [weak self] _ in
                self?.getCardList()
            }
            
            alert.addAction(done)
            alert.addAction(retry)
            
            view?.showAlert(alert)
        }
    }
    
    func cardSelected(card: Card) {
        router?.showCardDetail(card: card)
    }
}

