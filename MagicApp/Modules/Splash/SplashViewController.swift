//
//  SplashViewController.swift
//  Xfera
//
//  Created by Francisco Lucena de Juan on 21/5/23.
//  Copyright © 2020 Xfera Consumer Finance EFC SA. All rights reserved.
//

import Foundation
import UIKit

class SplashViewController: BaseViewController {
    var presenter: SplashPresenterProtocol!
        
    override func viewDidLoad() {
        super.viewDidLoad()
                       
        presenter.viewDidLoad()
    }
}

//----------------------------
// MARK: - Protocol
//----------------------------
extension SplashViewController: SplashViewProtocol{

}
