//
//  ViewController.swift
//  MagicApp
//
//  Created by Francisco Lucena de Juan on 20/5/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        getCards()
    }
    
    func getCards()  {
        Task {
            let response = await APIManager.getCards()
            print(response)
        }
    }


}

