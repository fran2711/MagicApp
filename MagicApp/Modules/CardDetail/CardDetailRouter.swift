//
//  CardDetailRouter.swift
//  Xfera
//
//  Created by Francisco Lucena de Juan on 21/5/23.
//  Copyright © 2020 Xfera Consumer Finance EFC SA. All rights reserved.
//

import Foundation
import UIKit

class CardDetailRouter: BaseRouter, CardDetailRouterProtocol {

    //----------------------------
    // MARK: - Launcher Initializer
    //----------------------------
    @discardableResult
    static func launchModule(card: Card) -> UIViewController? {
        if let view = StoryboardHandler.instantiateViewController(.cardDetailView) as? CardDetailViewController {
                    
            var interactor: CardDetailInteractorProtocol = CardDetailInteractor()
            let router: CardDetailRouterProtocol = CardDetailRouter()
            var presenter: CardDetailPresenterProtocol = CardDetailPresenter(card: card)

            view.presenter = presenter
            presenter.view = view
            presenter.router = router
            presenter.interactor = interactor
            interactor.presenter = presenter
                    
            return view
        }
        
        return nil
    }
    
    //----------------------------
    // MARK: - Navigation methods
    //----------------------------
}
