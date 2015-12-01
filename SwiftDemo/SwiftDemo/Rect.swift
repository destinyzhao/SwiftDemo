//
//  Rect.swift
//  SwiftDemo
//
//  Created by Alex on 15/11/24.
//  Copyright © 2015年 Alex. All rights reserved.
//

import Foundation

struct Size {
    var width = 0.0,height = 0.0
}

struct Point {
    var x = 0.0, y = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
}
