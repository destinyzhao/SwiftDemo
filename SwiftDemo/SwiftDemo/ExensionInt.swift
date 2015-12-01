//
//  ExensionInt.swift
//  SwiftDemo
//
//  Created by Alex on 15/11/24.
//  Copyright © 2015年 Alex. All rights reserved.
//

import Foundation

extension Int{
    func repetitions(task:() -> ()){
        for i in 0..<self{
            task()
            print(i)
        }
    }
}

// 平方
extension Int{
    mutating func square(){
        self = self * self
    }
}

// 下标
extension Int{
    subscript(var digitIndex:Int) -> Int{
        var decimalBase = 1
        while digitIndex > 0{
            decimalBase *= 10
            --digitIndex
        }
        return (self / decimalBase) % 10
    }
}