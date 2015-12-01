//
//  RecipeIngredient.swift
//  SwiftDemo
//
//  Created by Alex on 15/11/20.
//  Copyright © 2015年 Alex. All rights reserved.
//

import Foundation

class Recipelngredient: Food {
    var quantity:Int
    init(name:String,quantity:Int){
        self.quantity = quantity
        super.init(name: name)
    }
    override convenience init(name: String) {
        self.init(name:name,quantity:1)
    }
}