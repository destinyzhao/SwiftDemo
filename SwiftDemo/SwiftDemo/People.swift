//
//  People.swift
//  SwiftDemo
//
//  Created by Alex on 15/11/18.
//  Copyright © 2015年 Alex. All rights reserved.
//

import Foundation

class People : NSObject {
    var firstName = ""
    var lastName = ""
    var nickName = ""
    
    var fullName:String{
        get{
            return nickName + " " + firstName + " " + lastName
        }
    }
    
    var age:Int = 0{
        willSet{
            print("Will set an new value \(newValue) to age")
        }
        didSet{
            print("age filed changed form \(oldValue) to \(age)")
            if age < 10{
                nickName = "Littele"
            }else{
                nickName = "大神"
            }
        }
    }
    
    func toString() -> String{
        return "Full Name:\(fullName)"+",Age:\(age)"
    }
}
