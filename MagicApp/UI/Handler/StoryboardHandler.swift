//
//  StoryboardHandler.swift
//  MagicApp
//
//  Created by Francisco Lucena de Juan on 21/5/23.
//

import Foundation
import UIKit

enum StoryboardName: String {
    case splash = "Splash"
    case personalData = "PersonalData"
    case cardList = "CardsList"
    case cardDetail = "CardDetail"
}

enum ViewControllerId: String {
    case splash = "SplashView"
    case personalDataView = "PersonalDataView"
    case cardListView = "CardListView"
    case cardDetailView = "CardDetailView"
    
    var storyboard: StoryboardName {
        switch self {
        case .splash:
            return .splash
        case .personalDataView:
            return .personalData
        case .cardListView:
            return .cardList
        case .cardDetailView:
            return .cardDetail
        }
    }
}

class StoryboardHandler {
    static func instantiateViewController(_ identifier: ViewControllerId) -> UIViewController {
        return UIStoryboard(name: identifier.storyboard.rawValue, bundle: nil).instantiateViewController(withIdentifier: identifier.rawValue)
    }
    
    static func instantiateInitialViewController(_ storyboard: StoryboardName) -> UIViewController {
        guard let initialViewController = UIStoryboard(name: storyboard.rawValue, bundle: nil).instantiateInitialViewController() else {
            assertionFailure("There is not view controller set as root for this storyboard")
            return UIViewController()
        }
        return initialViewController
    }
    
}
