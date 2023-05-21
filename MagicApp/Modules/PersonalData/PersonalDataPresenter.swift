//
//  PersonalDataPresenter.swift
//  MagicApp
//
//  Created by Francisco Lucena de Juan on 20/5/23.
//  Copyright © 2023 Francisco Lucena. All rights reserved.
//

import Foundation
import UIKit

class PersonalDataPresenter: BasePresenterProtocol {
    
    var view: PersonalDataViewProtocol?
    var interactor: PersonalDataInteractorProtocol?
    var router: PersonalDataRouterProtocol?
    
    func viewDidLoad() {
        self.updatePersonalData()
    }

}

extension PersonalDataPresenter: PersonalDataPresenterProtocol {
    func updatePersonalData() {
        view?.updateData(name: Constants.name, email: Constants.mail, date: Constants.currentDate)
    }
    
    func goToCardsList() {
        router?.showCards()
    }
}

