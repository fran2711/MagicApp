//
//  Cards.swift
//  MagicApp
//
//  Created by Francisco Lucena de Juan on 20/5/23.
//

import Foundation

struct CardsResponse: Codable {
    var cards: [CardResponse]?
}

struct CardResponse: Codable {
    var name: String?
    var manaCost: String?
    var cmc: Int?
    var colors: [String]?
    var colorIdentity: [String]?
    var type: String?
    var types: [String]?
    var subtypes: [String]?
    var rarity: String?
    var set: String?
    var setName: String?
    var text: String?
    var artist: String?
    var number: String?
    var power: String?
    var toughness: String?
    var layout: String?
    var multiverseid: String?
    var imageUrl: String?
    var variations: [String]?
    var foreignNames: [ForeignName]?
    var legalities: [Legalitie]?
    var id: String?
    
    struct ForeignName: Codable {
        var name: String?
        var text: String?
        var type: String?
        var flavor: String?
        var imageUrl: String?
        var language: String?
        var multiverseid: Int?
    }

    struct Legalitie: Codable {
        var format: String?
        var legality: String?
    }
}


