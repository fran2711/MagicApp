//
//  CardDetailProtocols.swift
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
protocol CardDetailViewProtocol: BaseViewProtocol {
    func configureCardDetailView(card: Card)
}

//----------------------------
// MARK: - Interactor
//----------------------------
protocol CardDetailInteractorProtocol {
    var presenter: CardDetailPresenterProtocol? { get set }
}

//----------------------------
// MARK: - Presenter
//----------------------------
protocol CardDetailPresenterProtocol: BasePresenterProtocol {
    var view: CardDetailViewProtocol? { get set }
    var interactor: CardDetailInteractorProtocol? { get set }
    var router: CardDetailRouterProtocol? { get set }
}

//----------------------------
// MARK: - Router
//----------------------------
protocol CardDetailRouterProtocol : BaseRouterProtocol {
    static func launchModule(card: Card) -> UIViewController?
}
