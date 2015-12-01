//
//  Starship.swift
//  SwiftDemo
//
//  Created by Alex on 15/11/20.
//  Copyright © 2015年 Alex. All rights reserved.
//

import Foundation

protocol FullyNamed{
    var fullName:String{get}
}

class Starship:FullyNamed {
    var prefix:String?
    var name:String
    init(name:String,prefix:String?=nil){
        self.name = name
        self.prefix = prefix
    }
    var fullName: String {
        return (prefix != nil ? prefix! + " " : "") + name
    }
}