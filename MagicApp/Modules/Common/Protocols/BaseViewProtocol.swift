//
//  BaseViewProtocol.swift
//  MagicApp
//
//  Created by Francisco Lucena de Juan on 21/5/23.
//


import Foundation
import UIKit

protocol BaseViewProtocol {
    func showLoading(_ : @escaping() -> ())
    func hideLoading()
    func showAlert(_ alert: UIAlertController)
    func errorAlert(errorMessage: String, title: String?) -> UIAlertController
}

extension UIViewController: BaseViewProtocol {

   @objc func showLoading(_ : @escaping() -> ()) {}
    
   @objc func hideLoading() {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    func errorAlert(errorMessage: String, title: String?) -> UIAlertController {
        return AlertManager.createErrorAlert(title: title, message: errorMessage)
    }
    
    func showAlert(_ alert: UIAlertController) {
        self.present(alert, animated: true, completion: nil)
    }
}
