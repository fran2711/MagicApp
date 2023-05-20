//
//  SplashPresenter.swift
//  Xfera
//
//  Created by Francisco Lucena de Juan on 21/5/23.
//  Copyright © 2020 Xfera Consumer Finance EFC SA. All rights reserved.
//

import Foundation
import UIKit

class SplashPresenter: BasePresenterProtocol {
    
    var view: SplashViewProtocol?
    var interactor: SplashInteractorProtocol?
    var router: SplashRouterProtocol?
    
    func viewDidLoad() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) { [weak self] in
            self?.router?.presentPersonalDataView()
        }
    }

}

extension SplashPresenter: SplashPresenterProtocol {
    
}

