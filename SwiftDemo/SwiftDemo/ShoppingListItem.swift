//
//  ShoppingListItem.swift
//  SwiftDemo
//
//  Created by Alex on 15/11/20.
//  Copyright © 2015年 Alex. All rights reserved.
//

import Foundation

class ShoppingListItem: Recipelngredient {
    var purchased = false
    var description:String{
        var output = "\(quantity) x \(name.lowercaseString)"
        output += purchased ? " ✔" : " ✘"
        return output
    }
}