//
//  Square.swift
//  SwiftDemo
//
//  Created by Alex on 15/11/9.
//  Copyright © 2015年 Alex. All rights reserved.
//

import Foundation

class Square: NamedShape {
    var sideLength:Double
    
    init(sideLength:Double,name:String){
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() ->Double{
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of length\(sideLength) name is:\(super.name)"
    }
}

class EquilateralTraingle: NamedShape {
    var sideLength:Double = 0.0
    
    init(sideLength:Double,name:String){
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    var perimeter:Double{
        get{
            return 3.0 * sideLength
        }
        
        set{
            sideLength = newValue/3.0
        }
    }
    
    override func simpleDescription() -> String {
        return "An equilateral triagle with sides of length \(sideLength))."
    }
}