//
//  Fruit.swift
//  Fruitness
//
//  Created by Izzat Jabali on 30/9/20.
//
//
import Foundation

struct Fruit {
    
//    var isPressed = false 
//    var isMatched = false
    var identifier: Int
    var name: String
    var fruit: String
  
 
    init(identifier : Int, fruit : String, name : String) {
        self.identifier = identifier
        self.name = name
        self.fruit = fruit
    }

}
