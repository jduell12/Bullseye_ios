//
//  ContentView.swift
//  Bullseye
//
//  Created by Jessica Duell on 1/26/22.
//

import SwiftUI

struct ContentView: View {
    @State private var alertIsVisible = false
    @State private var sliderValue = 50.0
    @State private var game = Game()
    
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Text("🎯🎯🎯\nPut the Bullseye as close as you can to".uppercased())
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
                    Slider(value: $sliderValue, in: 1.0...100.0)
                    Text("100")
                        .fontWeight(.bold)
                }
                .padding()
                Button(action: {
                    alertIsVisible = true
                    
                }) {
                    Text("Hit Me".uppercased())
                        .bold()
                        .font(.title3)
                }
                    .padding(20.0)
                    .background(
                        ZStack{
                            Color("ButtonColor")
                            LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
                        }
                    )
                    .foregroundColor(.white)
                    .cornerRadius(21.0)
                    .alert(isPresented: $alertIsVisible,
                        content: {
                        let roundedValue = Int(sliderValue.rounded())
                        
                        return Alert(title: Text("The slider value is \(roundedValue)"), message: Text("You scored \(game.points(sliderValue: roundedValue)) points this round"), dismissButton: .default(Text("Start next Round")))
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
