//
//  PersonalDataProtocols.swift
//  Xfera
//
//  Created by Francisco Lucena de Juan on 20/5/23.
//  Copyright © 2020 Xfera Consumer Finance EFC SA. All rights reserved.
//

import Foundation
import UIKit

//----------------------------
// MARK: - View
//----------------------------
protocol PersonalDataViewProtocol: BaseViewProtocol {
    func updateData(name: String, email: String, date: String)
}

//----------------------------
// MARK: - Interactor
//----------------------------
protocol PersonalDataInteractorProtocol {
    var presenter: PersonalDataPresenterProtocol? { get set }
}

//----------------------------
// MARK: - Presenter
//----------------------------
protocol PersonalDataPresenterProtocol: BasePresenterProtocol {
    var view: PersonalDataViewProtocol? { get set }
    var interactor: PersonalDataInteractorProtocol? { get set }
    var router: PersonalDataRouterProtocol? { get set }
    
    func goToCardsList()
    
}

//----------------------------
// MARK: - Router
//----------------------------
protocol PersonalDataRouterProtocol : BaseRouterProtocol {
    var view: PersonalDataViewController? { get set }
    static func launchModule() -> UIViewController?
    
    func showCards()
}
