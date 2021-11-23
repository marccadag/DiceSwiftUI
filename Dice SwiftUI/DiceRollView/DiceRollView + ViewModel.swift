//
//  DiceRollView + ViewModel.swift
//  Dice SwiftUI
//
//  Created by Marc Cadag on 11/22/21.
//

import Combine

extension DiceRollView {
    class ViewModel: ObservableObject {
        private let diceProvider = DiceProvider()
        
        @Published var leftDice: Dice = .one
        @Published var rightDice: Dice = .one
        
        func randomizeDice() {
            leftDice = diceProvider.randomDice
            rightDice = diceProvider.randomDice
        }
    }
}
