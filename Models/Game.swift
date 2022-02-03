//
//  Game.swift
//  Bullseye
//
//  Created by Jessica Duell on 1/28/22.
//

import Foundation

struct Game {
    var target: Int = Int.random(in: 1...100)
    var score: Int = 0
    var currentRound: Int = 1
    
    func points (sliderValue: Int) -> Int{
        var difference: Int = self.target - sliderValue
        
        if difference < 0 {
            difference *= -1
        }
        
        let awardedPoints: Int = 100 - difference
        return awardedPoints
    }
}
