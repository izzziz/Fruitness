//
//  Fruit.swift
//  Fruitness
//
//  Created by Izzat Jabali on 30/9/20.
//

import Foundation

struct Fruit {
    var isPressed = false
    var isMatched = false
    var identifier: Int
    
    
    static var identifierFactory = 0 //Stored with the type
    
    //That what static means - You cant ask Fruit for a unique identidefer You ask the fruit type. 
    
    static func getUniqueIdentifier() -> Int {
     identifierFactory += 1
        return identifierFactory
        
    }
    
    init() {
        self.identifier = Fruit.getUniqueIdentifier()
    }
}

