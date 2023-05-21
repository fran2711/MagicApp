//
//  CardsListRouter.swift
//  MagicApp
//
//  Created by Francisco Lucena de Juan on 21/5/23.
//  Copyright © 2023 Francisco Lucena. All rights reserved.
//

import Foundation
import UIKit

class CardsListRouter: BaseRouter, CardsListRouterProtocol {

    var view: CardsListViewController?
    
    //----------------------------
    // MARK: - Launcher Initializer
    //----------------------------
    @discardableResult
    static func launchModule() -> UIViewController? {
        if let view = StoryboardHandler.instantiateViewController(.cardListView) as? CardsListViewController {
                    
            var interactor: CardsListInteractorProtocol = CardsListInteractor()
            var router: CardsListRouterProtocol = CardsListRouter()
            var presenter: CardsListPresenterProtocol = CardsListPresenter()

            view.presenter = presenter
            presenter.view = view
            presenter.router = router
            presenter.interactor = interactor
            interactor.presenter = presenter
            router.view = view
                    
            return view
        }
        
        return nil
    }
    
    //----------------------------
    // MARK: - Navigation methods
    //----------------------------
    
    func showCardDetail(card: Card) {
        push(from: view, to: CardDetailRouter.launchModule(card: card))
    }

}
