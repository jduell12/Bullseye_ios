//
//  RoundedViews.swift
//  Bullseye
//
//  Created by Jessica Duell on 2/4/22.
//

import SwiftUI

struct RoundedImageViewStroked: View {
    var systemName: String
    
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .foregroundColor(Color("TextColor"))
            .frame(width: 56.0, height: 56.0)
            .overlay(
                Circle()
                    .strokeBorder(Color("RoundedColor"), lineWidth: 2.0)
            )
    }
}

struct RoundedImageViewFilled: View {
    var systemName: String
    
    var body: some View {
            Image(systemName: systemName)
                .font(.title)
                .foregroundColor(Color("RoundedText"))
                .frame(width: 56.0, height: 56.0)
                .background(
                    Circle()
                        .fill(Color("RoundedFill"))
                )
    }
}

struct RoundRectText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .kerning(-0.2)
            .bold()
            .font(.title3)
            .frame(width: 68.0, height: 56.0)
            .foregroundColor(Color("TextColor"))
            .overlay( RoundedRectangle(cornerRadius: 20.0)
                .strokeBorder(
                    lineWidth: 2.0
                )
                .foregroundColor(Color("RoundedColor"))
        )
    }
}

struct PreviewView: View {
    var body: some View {
        VStack (spacing: 10) {
            RoundedImageViewStroked(systemName: "arrow.counterclockwise")
            RoundedImageViewFilled(systemName: "list.dash")
            RoundRectText(text: "999")
            
        }
    }
}

struct RoundedViews_Previews: PreviewProvider {
    static var previews: some View {
        PreviewView()
        PreviewView()
            .preferredColorScheme(.dark)
    }
}
