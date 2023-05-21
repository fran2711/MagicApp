//
//  BaseViewController.swift
//  MagicApp
//
//  Created by Francisco Lucena de Juan on 21/5/23.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func loadViewController() -> UIViewController {
        let loadingVC = LoadingViewController()
        loadingVC.modalPresentationStyle = .overCurrentContext
        loadingVC.modalTransitionStyle = .crossDissolve
        return loadingVC
    }
}
