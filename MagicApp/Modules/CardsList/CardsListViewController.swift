//
//  CardsListViewController.swift
//  MagicApp
//
//  Created by Francisco Lucena de Juan on 21/5/23.
//  Copyright © 2023 Francisco Lucena. All rights reserved.
//

import Foundation
import UIKit

class CardsListViewController: BaseViewController {
    var presenter: CardsListPresenterProtocol!
    var cards: [Card] = []
        
    @IBOutlet weak var cardsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
    }
}

extension CardsListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        cards.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        cell.textLabel?.text = cards[indexPath.row].name
        cell.detailTextLabel?.text = cards[indexPath.row].type
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cardSelected = cards[indexPath.row]
        presenter.cardSelected(card: cardSelected)
    }
}

//----------------------------
// MARK: - Protocol
//----------------------------
extension CardsListViewController: CardsListViewProtocol{

    func showCards(cards: [Card]) {
        self.cards = cards
        cardsTableView.reloadData()
        self.hideLoading()
    }
    
    override func showLoading(_ completion : @escaping() -> ()) {
        self.present(loadViewController(), animated: true, completion: completion)
    }
}
