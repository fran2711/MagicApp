//
//  SplashRouter.swift
//  MagicApp
//
//  Created by Francisco Lucena de Juan on 21/5/23.
//  Copyright © 2023 Francisco Lucena. All rights reserved.
//

import Foundation
import UIKit

class SplashRouter: BaseRouter, SplashRouterProtocol {

    var view: SplashViewController?

    //----------------------------
    // MARK: - Launcher Initializer
    //----------------------------
    @discardableResult
    static func launchModule() -> UIViewController? {
        if let view = StoryboardHandler.instantiateViewController(.splash) as? SplashViewController {
                    
            var interactor: SplashInteractorProtocol = SplashInteractor()
            let router: SplashRouterProtocol = SplashRouter()
            var presenter: SplashPresenterProtocol = SplashPresenter()

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
    
    func presentPersonalDataView() {
        PersonalDataRouter.launchModule()
    }
    
}
