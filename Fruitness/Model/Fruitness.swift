//
//  Fruitness.swift
//  Fruitness
//
//  Created by Izzat Jabali on 29/9/20.
//

import Foundation

//A struct is a value Type , thats why we make the func chooseFruit mutating
struct Fruitness
{
     var fruit = [Fruit]()
    //var didUserChooseItRight: Int?
    
    
    var fruitOptions = [
        Fruit(identifier: 0, fruit:"🥝", name: "KIWI"),
        Fruit(identifier: 1, fruit:"🍎", name: "APPLE"),
        Fruit(identifier: 2, fruit:"🍐", name: "PEAR"),
        Fruit(identifier: 3, fruit:"🍊", name: "ORANGE"),
        Fruit(identifier: 4, fruit:"🍓", name: "STRAWBERRY"),
        Fruit(identifier: 5, fruit:"🍉", name: "WATERMELON"),
        Fruit(identifier: 6, fruit:"🍇", name: "GRAPES"),
        Fruit(identifier: 7, fruit:"🍌", name: "BANANA"),
        Fruit(identifier: 8, fruit:"🍒", name: "CHERRY")

    ]
    
    var fruitNumber = 0
    var score = 0
    
    
    //    func fruitOnButton() -> String {
    //
    //        //    func didTheLabelMatchTheButton() {
    //
    //        fruitOptions[fruitNumber].fruit
    //    }
    
   
    func getFruitText() -> String {
        return fruitOptions[fruitNumber].name
    }
    
    func getScore() -> Int {
        return score
    }
    
    func getProgress() -> Float {
        let progress = Float(fruitNumber) / Float(fruitOptions.count)
        return progress
    }
    
    //    func shuffleFruit() -> String {
    //
    //    }
//    func replayGame() -> Bool {
//        if fruitness.i == finishedTheGame {
//            finishedTheGame.description
//            return true
//        } else {
//            return false
//        }
//    }
    mutating func nextFruit() {
        if fruitNumber + 1 < fruitOptions.count {
            fruitNumber += 1
        } else {
            fruitNumber += 0
            score = 0
        }
    }
    mutating func checkAnswer(userAnswer: String) -> Bool {
        //Need to change answer to rightAnswer here.
        if userAnswer == fruitOptions[fruitNumber].fruit {
            score += 1 //We increase the value of score when we get the answer right.
            
            return true
        } else {
            return false
        }
    }
    
    //We are modifing one of the properties of a struct so therefore we have to mark this as a mutating Value.  So we have to mark this function as mutating so that we rebuild our structr with a new value for score.
    
    //if userAnswer == fruitOptions[fruitNumber].fruit {
    
    
}



