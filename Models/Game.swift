//
//  Game.swift
//  Bullseye
//
//  Created by Jessica Duell on 1/28/22.
//

import Foundation

struct Game {
    var target = Int.random(in: 1...100)
    var score = 0
    var currentRound = 1
    
    func points (sliderValue: Int) -> Int{
        100 - abs(self.target - sliderValue)
    }
    
    mutating func startNewRound(points: Int) {
        self.score += points
        self.currentRound += 1
        self.target = Int.random(in: 1...100)
    }
}
