//
//  TextViews.swift
//  Bullseye
//
//  Created by Jessica Duell on 2/4/22.
//

import SwiftUI

struct InstructionText: View {
    var text: String
    
    var body: some View {
        Text(text.uppercased())
            .foregroundColor(Color("TextColor"))
            .bold()
            .kerning(2.0)
            .multilineTextAlignment(.center)
            .lineSpacing(4.0)
            .font(.footnote)
    }
}

struct BigNumberText: View {
    var text: String
    var body: some View {
        Text(text)
            .foregroundColor(Color("TextColor"))
            .kerning(-1.0)
            .fontWeight(.black)
            .font(.largeTitle)
    }
}

struct SliderLabelText: View {
    var text: String
    var body: some View {
        Text(text)
            .foregroundColor(Color("TextColor"))
            .bold()
            .frame(width: 35.0)
    }
}

struct LabelText: View {
    var text: String
    var body: some View {
        Text(text)
            .bold()
            .foregroundColor(Color("TextColor"))
            .font(.caption)
            .kerning(1.5)
    }
}

struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            InstructionText(text: "Instructions")
            BigNumberText(text: "999")
            SliderLabelText(text: "1")
            LabelText(text: "Round")
        }
    }
}
