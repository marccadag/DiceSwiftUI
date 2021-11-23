//
//  Dice.swift
//  Dice SwiftUI
//
//  Created by Marc Cadag on 11/21/21.
//

enum Dice: CaseIterable {
    case one
    case two
    case three
    case four
    case five
    case six
    
    var imageAsset: Asset {
        switch self {
        case .one:
            return .dice1
        case .two:
            return .dice2
        case .three:
            return .dice3
        case .four:
            return .dice4
        case .five:
            return .dice5
        case .six:
            return .dice6
        }
    }
}
