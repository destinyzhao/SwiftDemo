//
//  Shape.swift
//  SwiftDemo
//
//  Created by Alex on 15/11/9.
//  Copyright © 2015年 Alex. All rights reserved.
//

import Foundation

enum CompassPoint:Int{
    case North
    case South
    case East
    case West
}

class Shape {
    var numberOfSides = 0
    func simpleDescription() ->String{
        return "A shape with \(numberOfSides) sides."
    }
}

class NamedShape {
    var numberOfSides:Int = 0
    var name:String
    
    init(name:String){
        self.name = name
    }
    
    func simpleDescription() ->String{
        return "A shape with \(numberOfSides) sides. name is \(name)"
    }
}
