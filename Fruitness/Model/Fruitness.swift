//
//  Fruitness.swift
//  Fruitness
//
//  Created by Izzat Jabali on 29/9/20.
//

import Foundation


class Fruitness
{
    
    //    let names: String
    //    let number: Int
    //    let fruit: [String:String]
    var fruit = [Fruit]()
    
    func chooseFruit(at index: Int) { //   <-  To be flexiable with the index
        
    }
    
    //We need to create a init. Add an init in a class. We need to know the number of matches you get / To add to the concentartion game
    
    init(numberOfFruitButton: Int) {
        
        //A for loop with countable range, that is going to go through the NumberOfFruitButtons. - To move the text the player to the next question.
        
        for identifier in 1...numberOfFruitButton {
            let fruit = Fruit()
           
    //       fruit += [fruit]
            
            
            //            buttons += [button : button]
        }
        //TODO: Shuffle
    }
}

