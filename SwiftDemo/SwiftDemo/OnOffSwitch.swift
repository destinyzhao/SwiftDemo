//
//  OnOffSwitch.swift
//  SwiftDemo
//
//  Created by Alex on 15/11/20.
//  Copyright © 2015年 Alex. All rights reserved.
//

import Foundation

protocol Togglable{
    mutating func toggle()
}

enum OnOffSwitch:Togglable{
    case Off,On
    mutating func toggle() {
        switch self{
        case  Off:
            self = On
        case On:
            self = Off
        }
    }
}