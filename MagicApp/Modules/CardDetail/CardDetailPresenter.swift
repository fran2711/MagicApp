//
//  CardDetailPresenter.swift
//  Xfera
//
//  Created by Francisco Lucena de Juan on 21/5/23.
//  Copyright © 2020 Xfera Consumer Finance EFC SA. All rights reserved.
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
        
    }

}

extension CardDetailPresenter: CardDetailPresenterProtocol {
    
}

