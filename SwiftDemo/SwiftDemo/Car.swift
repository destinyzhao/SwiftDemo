//
//  Car.swift
//  SwiftDemo
//
//  Created by Alex on 15/11/18.
//  Copyright © 2015年 Alex. All rights reserved.
//

import Foundation

class Car: Vehicle {
    var gear = 1
    override var description:String{
        return super.description + " in gear \(gear)"
    }
}
