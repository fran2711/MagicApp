//
//  CardsListProtocols.swift
//  Xfera
//
//  Created by Francisco Lucena de Juan on 21/5/23.
//  Copyright © 2020 Xfera Consumer Finance EFC SA. All rights reserved.
//

import Foundation
import UIKit

//----------------------------
// MARK: - View
//----------------------------
protocol CardsListViewProtocol: BaseViewProtocol {
}

//----------------------------
// MARK: - Interactor
//----------------------------
protocol CardsListInteractorProtocol {
    var presenter: CardsListPresenterProtocol? { get set }
}

//----------------------------
// MARK: - Presenter
//----------------------------
protocol CardsListPresenterProtocol: BasePresenterProtocol {
    var view: CardsListViewProtocol? { get set }
    var interactor: CardsListInteractorProtocol? { get set }
    var router: CardsListRouterProtocol? { get set }
}

//----------------------------
// MARK: - Router
//----------------------------
protocol CardsListRouterProtocol : BaseRouterProtocol {
    static func launchModule() -> UIViewController?
}
