//
//  CardDetailViewController.swift
//  Xfera
//
//  Created by Francisco Lucena de Juan on 21/5/23.
//  Copyright © 2020 Xfera Consumer Finance EFC SA. All rights reserved.
//

import Foundation
import UIKit
import SDWebImage

class CardDetailViewController: BaseViewController {
    var presenter: CardDetailPresenterProtocol!
        
    @IBOutlet weak var cardImage: UIImageView!
    @IBOutlet weak var cardNameLabel: UILabel!
    @IBOutlet weak var cardManaCostLabel: UILabel!
    @IBOutlet weak var cardRarityLabel: UILabel!
    @IBOutlet weak var cardTextLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
                       
        presenter.viewDidLoad()
    }
}

//----------------------------
// MARK: - Protocol
//----------------------------
extension CardDetailViewController: CardDetailViewProtocol{
    func configureCardDetailView(card: Card) {
        cardImage.sd_setImage(with: card.getImageURL(), placeholderImage: UIImage(named: "noImageIcon"))
        cardNameLabel.text = card.name
        cardManaCostLabel.text = card.manaCost
        cardRarityLabel.text = card.rarity
        cardTextLabel.text = card.text
    }
}
