//
//  PersonalDataViewController.swift
//  Xfera
//
//  Created by Francisco Lucena de Juan on 20/5/23.
//  Copyright © 2020 Xfera Consumer Finance EFC SA. All rights reserved.
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
    }
    
    @IBAction func navigationButtonPressed(_ sender: UIButton) {
        
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
