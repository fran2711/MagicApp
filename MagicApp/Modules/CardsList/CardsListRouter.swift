//
//  CardsListRouter.swift
//  Xfera
//
//  Created by Francisco Lucena de Juan on 21/5/23.
//  Copyright © 2020 Xfera Consumer Finance EFC SA. All rights reserved.
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
            let router: CardsListRouterProtocol = CardsListRouter()
            var presenter: CardsListPresenterProtocol = CardsListPresenter()

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
