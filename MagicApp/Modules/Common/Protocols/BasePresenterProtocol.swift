//
//  BasePresenterProtocol.swift
//  MagicApp
//
//  Created by Francisco Lucena de Juan on 21/5/23.
//

import Foundation

protocol BasePresenterProtocol {
    func viewDidLoad()
    func viewWillAppear()
    func viewDidAppear()
    func viewWillDisappear()
    func viewDidDisappear()
}

extension BasePresenterProtocol {
    func viewDidLoad() {}
    func viewWillAppear() {}
    func viewDidAppear() {}
    func viewWillDisappear() {}
    func viewDidDisappear() {}
}
