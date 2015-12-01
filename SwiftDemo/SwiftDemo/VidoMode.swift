//
//  VidoMode.swift
//  SwiftDemo
//
//  Created by Alex on 15/11/18.
//  Copyright © 2015年 Alex. All rights reserved.
//

import Foundation

struct Resolution {
    var width = 0
    var height = 0
}

class VidoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name:String?
}
