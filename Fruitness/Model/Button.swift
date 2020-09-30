//
//  Button.swift
//  Fruitness
//
//  Created by Izzat Jabali on 29/9/20.
//

import Foundation

//Struct is a value type!
struct Button {
    
    var isPressed = false
    var isMatched = false
    var identifier: Int
    
    
    static var identifierFactory = 0
    static func getUniqueIdentifier() -> Int {
     identifierFactory += 1
        return identifierFactory
        
    }
    init(identifier: Int) {
        self.identifier = Button.getUniqueIdentifier()
    }
}


