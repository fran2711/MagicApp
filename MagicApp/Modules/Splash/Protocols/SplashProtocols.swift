//
//  SplashProtocols.swift
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
protocol SplashViewProtocol: BaseViewProtocol {
}

//----------------------------
// MARK: - Interactor
//----------------------------
protocol SplashInteractorProtocol {
    var presenter: SplashPresenterProtocol? { get set }
}

//----------------------------
// MARK: - Presenter
//----------------------------
protocol SplashPresenterProtocol: BasePresenterProtocol {
    var view: SplashViewProtocol? { get set }
    var interactor: SplashInteractorProtocol? { get set }
    var router: SplashRouterProtocol? { get set }
}

//----------------------------
// MARK: - Router
//----------------------------
protocol SplashRouterProtocol : BaseRouterProtocol {
    static func launchModule() -> UIViewController?
    
    func presentPersonalDataView()
}
