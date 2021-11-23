//
//  Image+Assets.swift
//  Dice SwiftUI
//
//  Created by Marc Cadag on 11/21/21.
//

import SwiftUI

enum Asset: String {
    case greenBackground = "GreenBackground"
    case diceLogo = "DiceLogo"
    
    // Dice
    case dice1 = "Dice1"
    case dice2 = "Dice2"
    case dice3 = "Dice3"
    case dice4 = "Dice4"
    case dice5 = "Dice5"
    case dice6 = "Dice6"
}

extension Image {
    init(_ asset: Asset) {
        self.init(asset.rawValue)
    }
}
