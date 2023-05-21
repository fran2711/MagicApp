//
//  CardDetailPresenter.swift
//  MagicApp
//
//  Created by Francisco Lucena de Juan on 21/5/23.
//  Copyright © 2023 Francisco Lucena. All rights reserved.
//

import Foundation
import UIKit

class CardDetailPresenter: BasePresenterProtocol {
    
    var view: CardDetailViewProtocol?
    var interactor: CardDetailInteractorProtocol?
    var router: CardDetailRouterProtocol?
    
    var card: Card
    
    init(card: Card) {
        self.card = card
    }
    
    func viewDidLoad() {
        view?.configureCardDetailView(card: card)
    }

}

extension CardDetailPresenter: CardDetailPresenterProtocol {
    
}

