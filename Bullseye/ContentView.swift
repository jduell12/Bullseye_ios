//
//  ContentView.swift
//  Bullseye
//
//  Created by Jessica Duell on 1/26/22.
//

import SwiftUI

struct ContentView: View {
    @State private var alertIsVisible: Bool = false
    
    var body: some View {
        VStack {
            VStack {
                Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                    .bold()
                    .kerning(2.0)
                    .multilineTextAlignment(.center)
                    .lineSpacing(4.0)
                    .font(.footnote)
                Text("89")
                    .kerning(-1.0)
                    .fontWeight(.black)
                    .font(.largeTitle)
                HStack {
                    Text("1")
                        .fontWeight(.bold)
                    Slider(value: .constant(50), in: 1.0...100.0)
                    Text("100")
                        .fontWeight(.bold)
                }
                Button(action: {
                    print("I've been hit")
                    self.alertIsVisible = true
                    
                }) {
                    Text("Hit Me")
                }.alert(isPresented: $alertIsVisible,
                    content: {
                    return Alert(title: Text("Hello there!"), message: Text("This is my first popup"), dismissButton: .default(Text("Awesome!")))
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
