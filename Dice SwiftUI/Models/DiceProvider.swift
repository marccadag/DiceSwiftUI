//
//  DiceProvider.swift
//  Dice SwiftUI
//
//  Created by Marc Cadag on 11/21/21.
//

class DiceProvider {
    private let dice = Dice.allCases
    
    var randomDice: Dice {
        dice.randomElement() ?? .one
    }
}
