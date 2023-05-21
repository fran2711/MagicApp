//
//  SplashViewController.swift
//  MagicApp
//
//  Created by Francisco Lucena de Juan on 21/5/23.
//  Copyright © 2023 Francisco Lucena. All rights reserved.
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
