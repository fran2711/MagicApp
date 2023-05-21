//
//  PersonalDataViewController.swift
//  MagicApp
//
//  Created by Francisco Lucena de Juan on 20/5/23.
//  Copyright © 2023 Francisco Lucena. All rights reserved.
//

import Foundation
import UIKit

class PersonalDataViewController: BaseViewController {
    var presenter: PersonalDataPresenterProtocol!
        
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var navigationButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
                       
        presenter.viewDidLoad()
        
        navigationButton.setTitle(Constants.goToCards, for: .normal)
    }
    
    @IBAction func navigationButtonPressed(_ sender: UIButton) {
        presenter.goToCardsList()
    }
    
}

//----------------------------
// MARK: - Protocol
//----------------------------
extension PersonalDataViewController: PersonalDataViewProtocol{
    func updateData(name: String, email: String, date: String) {
        self.nameLabel.text = name
        self.emailLabel.text = email
        self.dateLabel.text = date
    }
}
