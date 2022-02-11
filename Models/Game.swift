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
       let difference = abs(self.target - sliderValue)
       let bonus: Int
        
        if difference == 0 {
            bonus = 100
        } else if difference <= 2 {
            bonus = 50
        } else {
            bonus = 0
        }
        
        return 100 - difference + bonus
    }
    
    mutating func startNewRound(points: Int) {
        self.score += points
        self.currentRound += 1
        self.target = Int.random(in: 1...100)
    }
}
