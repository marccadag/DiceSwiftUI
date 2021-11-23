//
//  DiceRollView.swift
//  Dice SwiftUI
//
//  Created by Marc Cadag on 10/18/21.
//

import SwiftUI

struct DiceRollView: View {
    @ObservedObject private var viewModel = ViewModel()
    
    var body: some View {
        ZStack{
            Image(.greenBackground)
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image(.diceLogo)
                
                Spacer()
                
                HStack {
                    DiceView(dice: viewModel.leftDice)
                    DiceView(dice: viewModel.rightDice)
                }
                .padding(.horizontal)
                
                Spacer()
                
                Button(action: {
                    self.viewModel.randomizeDice()
                }) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
                .background(Color.red)
            }
        }
    }
}

struct DiceView: View {
    let dice: Dice
    
    var body: some View {
        Image(dice.imageAsset)
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}

struct DiceRollView_Previews: PreviewProvider {
    static var previews: some View {
        DiceRollView()
    }
}
