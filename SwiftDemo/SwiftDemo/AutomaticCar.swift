//
//  AutomaticCar.swift
//  SwiftDemo
//
//  Created by Alex on 15/11/18.
//  Copyright © 2015年 Alex. All rights reserved.
//

import Foundation

class AutomaticCar: Car {
    override var currentSpeed:Double{
        didSet{
            gear = Int(currentSpeed/10.0) + 1
        }
    }
}
