//
//  Bicycle.swift
//  SwiftDemo
//
//  Created by Alex on 15/11/18.
//  Copyright © 2015年 Alex. All rights reserved.
//

import Foundation

class Bicycle: Vehicle {
    var hasBasket = false
    override init(){
        super.init()
        numberOfWheels = 2
    }
}