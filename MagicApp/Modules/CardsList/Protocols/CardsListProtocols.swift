//
//  CardsListProtocols.swift
//  MagicApp
//
//  Created by Francisco Lucena de Juan on 21/5/23.
//  Copyright © 2023 Francisco Lucena. All rights reserved.
//

import Foundation
import UIKit

//----------------------------
// MARK: - View
//----------------------------
protocol CardsListViewProtocol: BaseViewProtocol {
    func showCards(cards: [Card])
}

//----------------------------
// MARK: - Interactor
//----------------------------
protocol CardsListInteractorProtocol {
    var presenter: CardsListPresenterProtocol? { get set }
    
    func getCardList()
}

//----------------------------
// MARK: - Presenter
//----------------------------
protocol CardsListPresenterProtocol: BasePresenterProtocol {
    var view: CardsListViewProtocol? { get set }
    var interactor: CardsListInteractorProtocol? { get set }
    var router: CardsListRouterProtocol? { get set }
    
    func getCardList()
    func updateListWithCards(cards: Cards)
    func showError(error: String)
    func cardSelected(card: Card)
    func showLoading()
    func hideLoading()
}

//----------------------------
// MARK: - Router
//----------------------------
protocol CardsListRouterProtocol : BaseRouterProtocol {
    var view: CardsListViewController? { get set }
    static func launchModule() -> UIViewController?
    
    func showCardDetail(card: Card)
}
