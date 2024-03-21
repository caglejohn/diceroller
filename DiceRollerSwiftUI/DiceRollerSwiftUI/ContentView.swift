//
//  ContentView.swift
//  DiceRollerSwiftUI
//
//  Created by John Cagle on 21.03.24.
//

import SwiftUI

struct ContentView: View {
    // Initial image name
    @State var imageName = "dice-general"
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)

            Button(action: {
                // Change Dice Number with random, update imageName
                let number = Int.random(in: 1...6)
                imageName = "dice\(number)"
            }) {
                Text("Roll")
                    .fontWeight(.bold)
                    .font(.system(size: 32))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
