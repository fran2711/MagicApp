//
//  PersonalDataRouter.swift
//  Xfera
//
//  Created by Francisco Lucena de Juan on 20/5/23.
//  Copyright © 2020 Xfera Consumer Finance EFC SA. All rights reserved.
//

import Foundation
import UIKit

class PersonalDataRouter: BaseRouter, PersonalDataRouterProtocol {

    var view: PersonalDataViewController?
    
    //----------------------------
    // MARK: - Launcher Initializer
    //----------------------------
    @discardableResult
    static func launchModule() -> UIViewController? {
        if let view = StoryboardHandler.instantiateViewController(.personalDataView) as? PersonalDataViewController {
                    
            var interactor: PersonalDataInteractorProtocol = PersonalDataInteractor()
            var router: PersonalDataRouterProtocol = PersonalDataRouter()
            var presenter: PersonalDataPresenterProtocol = PersonalDataPresenter()

            view.presenter = presenter
            presenter.view = view
            presenter.router = router
            presenter.interactor = interactor
            interactor.presenter = presenter
            router.view = view
            
            router.startNavigation(navigationType: .asRootWithNav, view: view, from: nil)
                    
            return view
        }
        
        return nil
    }
    
    //----------------------------
    // MARK: - Navigation methods
    //----------------------------
    
    func showCards() {
        push(from: view, to: CardsListRouter.launchModule())
    }
}
