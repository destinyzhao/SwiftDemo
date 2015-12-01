//
//  Vehicle.swift
//  SwiftDemo
//
//  Created by Alex on 15/11/18.
//  Copyright © 2015年 Alex. All rights reserved.
//

import Foundation

/*
class Vehicle {
    var currentSpeed = 0.0
    var description:String{
        return "traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise(){
    }
}
*/

class Vehicle {
    var currentSpeed = 0.0
    var numberOfWheels = 0
    var description:String{
        return "\(numberOfWheels) wheel(s)"
    }
    func makeNoise(){
    }
}
