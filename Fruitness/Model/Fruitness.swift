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
    
    //  var fruitIndex = [index]
    var fruitNumber = 0
    var score = 0
    var finishedTheGame = 0
    
    
    mutating func checkAnswer(userAnswer: String) -> Bool {
        
        //Need to change answer to rightAnswer here.
        if userAnswer == fruitOptions[fruitNumber].fruit {
            score += 1 //We increase the value of score when we get the answer right.
            return true
        } else {
            return false
            
        }
    }
    
    func getScore() -> Int {
        return score
        
    }
    
    mutating func getFruitText() -> String {
        return fruitOptions[fruitNumber].name
        
    }
    
    func getProgress() -> Int {
        
        //Needs to be adjusted to when the fruit gets shuffled ><---<><>--
        //let progress = Float(fruitNumber) / Float(fruitOptions.count)
        let progress = fruitOptions.count
        return progress
        
    }
    mutating func restartGame() {
        fruitNumber = 0
        score = 0
        nextFruit()
    }
    
    
    
    mutating func nextFruit() {
        
        fruitOptions.shuffle()
        
        //        for (index, fruitOptions) in fruitOptions.enumerated() {
        //
        //            if fruitOptions.id != index {
        //                if fruitOptions.id == index + 1 {
        //                    fruitNumber = index
        
        
        if fruitNumber < fruitOptions.count {
            fruitNumber += 1
            
            
            
        } else {
            fruitNumber += 0
            score = 0
        }
    }



}
