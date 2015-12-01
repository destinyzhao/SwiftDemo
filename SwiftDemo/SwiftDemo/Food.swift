//
//  Food.swift
//  SwiftDemo
//
//  Created by Alex on 15/11/20.
//  Copyright © 2015年 Alex. All rights reserved.
//

import Foundation

class Food {
    var name:String
    init(name:String){
        self.name = name
    }
    convenience init(){
        self.init(name:"[Unnamed]")
    }
}
