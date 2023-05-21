//
//  Cards.swift
//  MagicApp
//
//  Created by Francisco Lucena de Juan on 20/5/23.
//

import Foundation

struct Cards {
    var cards: [Card] = []
    
    init(cardsResponse: CardsResponse?) {
        cardsResponse?.cards?.forEach({ cardResponse in
            let card = Card(cardResponse: cardResponse)
            self.cards.append(card)
        })
    }
}


struct Card {
    var name: String
    var manaCost: String
    var type: String
    var rarity: String
    var text: String
    var imageUrl: String
    
    init(cardResponse: CardResponse?) {
        name = cardResponse?.name ?? ""
        manaCost = cardResponse?.manaCost ?? ""
        type = cardResponse?.type ?? ""
        rarity = cardResponse?.rarity ?? ""
        text = cardResponse?.text ?? ""
        imageUrl = cardResponse?.imageUrl ?? ""
    }
    
    func getImageURL() -> URL? {
        let imageURL = URL(string: imageUrl)
        return imageURL
    }
}
