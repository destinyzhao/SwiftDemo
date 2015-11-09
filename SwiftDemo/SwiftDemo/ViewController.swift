//
//  ViewController.swift
//  SwiftDemo
//
//  Created by Alex on 15/11/9.
//  Copyright © 2015年 Alex. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 要创建一个类的实例,在类名后面加上括号。使用点语法来访问实例的属性和方法。
//        let shape = Shape()
//        shape.numberOfSides = 8;
//        print(shape.simpleDescription())
        
//        let shape = NamedShape(name: "Alex")
//        shape.numberOfSides = 7
//        print(shape.simpleDescription())
        
//        let test =  Square(sideLength: 5.2, name: "my test square")
//        print(test.area())
//        print(test.simpleDescription())
        
//        let triangle = EquilateralTraingle(sideLength: 3.1, name: "a triangle")
//        print(triangle.perimeter)
//        triangle.perimeter = 9.9
//        print(triangle.sideLength)
        
        print(CompassPoint.East.rawValue)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // 函数
    func printFun(name:String, age:Int) ->String{
        let printstr = "print name is \(name) age is \(age)"
        return printstr;
    }
    
    // 使用元组来让一个函数返回多个值
    func calculateStatistics(scores:[Int]) ->(min:Int,max:Int,sum:Int){
        var min = scores[0]
        var max = scores[0]
        var sum = 0
        
        for score in scores{
            if score > max{
                max = score
            }
            else if score < min{
                min = score
            }
            sum += score
        }
        return(min,max,sum)
    }
    
    // 函数可以带有可变个数的参数,这些参数在函数内表现为数组的形式
    func sumOf(numbers:Int...) ->Int{
        var sum = 0
        for number in numbers{
            sum += number
        }
        return sum
    }
    
    // 函数可以嵌套。被嵌套的函数可以访问外侧函数的变量,你可以使用嵌套函数来重构一个太长或者太复杂的函数。
    func returnFIfteen() ->Int{
        var y = 10
        func add(){
            y += 5
        }
        add()
        return y
    }

    // 函数是第一等类型,这意味着函数可以作为另一个函数的返回值。
    func makeIncrementer()->(Int -> Int){
        func addOne(number:Int) -> Int{
            return 1 + number
        }
        return addOne
    }
    
    // 函数也可以当做参数传入另一个函数。
    func hasAnyMatches(list: [Int], condition: Int -> Bool) -> Bool {
        for item in list {
        if condition(item) {
            return true
        }
    }
        return false
    }
    func lessThanTen(number: Int) -> Bool {
            return number > 10
    }
    
    
}

