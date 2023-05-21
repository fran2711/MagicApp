//
//  CardsListPresenter.swift
//  Xfera
//
//  Created by Francisco Lucena de Juan on 21/5/23.
//  Copyright © 2020 Xfera Consumer Finance EFC SA. All rights reserved.
//

import Foundation
import UIKit

class CardsListPresenter: BasePresenterProtocol {
    
    var view: CardsListViewProtocol?
    var interactor: CardsListInteractorProtocol?
    var router: CardsListRouterProtocol?

}

extension CardsListPresenter: CardsListPresenterProtocol {
    
}

