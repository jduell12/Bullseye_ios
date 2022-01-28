//
//  ContentView.swift
//  Bullseye
//
//  Created by Jessica Duell on 1/26/22.
//

import SwiftUI

struct ContentView: View {
    @State private var alertIsVisible: Bool = false
    @State private var sliderValue: Double = 50.0
    @State private var game: Game = Game()
    
    var body: some View {
        VStack {
            VStack {
                Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                    .bold()
                    .kerning(2.0)
                    .multilineTextAlignment(.center)
                    .lineSpacing(4.0)
                    .font(.footnote)
                Text(String(game.target))
                    .kerning(-1.0)
                    .fontWeight(.black)
                    .font(.largeTitle)
                HStack {
                    Text("1")
                        .fontWeight(.bold)
                    Slider(value: self.$sliderValue, in: 1.0...100.0)
                    Text("100")
                        .fontWeight(.bold)
                }
                Button(action: {
                    self.alertIsVisible = true
                    
                }) {
                    Text("Hit Me")
                }.alert(isPresented: $alertIsVisible,
                    content: {
                    let roundedValue: Int = Int(self.sliderValue.rounded())
                    
                    return Alert(title: Text("The slider value is \(roundedValue)"), message: Text("You scored \(self.game.points(sliderValue: roundedValue)) points this round"), dismissButton: .default(Text("Start next Round")))
                })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
