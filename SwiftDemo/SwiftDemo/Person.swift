//
//  Person.swift
//  SwiftDemo
//
//  Created by Alex on 15/11/20.
//  Copyright © 2015年 Alex. All rights reserved.
//

import Foundation

class Person {
    let name:String
    init(name:String){
        self.name = name
    }
    var apartment: Apartment?
    deinit{
        print("\(name) is being deinitialized")
    }
}

class Apartment {
    let number:Int
    init(number:Int){
        self.number = number
    }
    var tenant:Person?
    deinit{
        print("Apartment#\(number) is being deinitialized")
    }
}