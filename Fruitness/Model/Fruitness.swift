//
//  Fruitness.swift
//  Fruitness
//
//  Created by Izzat Jabali on 29/9/20.
//

import Foundation

struct Fruitness
{
    var fruit = [Fruit]()
    
    var fruitOptions = [
        
        Fruit(id: 1, fruit:"🥝", name: "KIWI"),
        Fruit(id: 2, fruit:"🍎", name: "APPLE"),
        Fruit(id: 3, fruit:"🍐", name: "PEAR"),
        Fruit(id: 4, fruit:"🍊", name: "ORANGE"),
        Fruit(id: 5, fruit:"🍓", name: "STRAWBERRY"),
        Fruit(id: 6, fruit:"🍉", name: "WATERMELON"),
        Fruit(id: 7, fruit:"🍇", name: "GRAPES"),
        Fruit(id: 8, fruit:"🍌", name: "BANANA"),
        Fruit(id: 9, fruit:"🍒", name: "CHERRY")
        
    ]
    
    var fruitNumber = 0
    var score = 0
    
    //    The score connected to the scoreLabel to keep track of the players score.
    func getScore() -> Int {
        return score
        
    }
    //    The fruit names that get displayed on the label come straight from fruitOptions
    mutating func getFruitText() -> String {
        return fruitOptions[fruitNumber].name
        
    }
    //    This has to return a float because thats what the progress view requires.
    func getProgress() -> Float {
        let progress = Float(fruitNumber) / Float(fruitOptions.count)
        return progress
        
    }
    //    This lets you restart the game by restarting the variables and calling the method nextFruit.
    mutating func restartGame() {
        fruitNumber = 0
        score = 0
        
    }
    
    
}



