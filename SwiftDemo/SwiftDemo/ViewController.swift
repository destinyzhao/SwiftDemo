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
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func minMax(array:[Int]) ->(min:Int,max:Int)?{
        if array.isEmpty{
            return nil
        }
        var currentMin = array[0]
        var currentMax = array[0]
        for value in array[1..<array.count]{
            if value < currentMin{
                currentMin =  value
            }
            else if value > currentMax{
                currentMax = value
            }
        }
        return (currentMin,currentMax)
        
    }
    
    func printAndCount(stringToPrint: String) -> Int {
        print(stringToPrint)
        return stringToPrint.characters.count
    }
    
    func sayGoodbye(personName:String){
        print("Goodbye,\(personName)!")
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
    
    
    // 元组
    func tuplesFunc(){
        let http404Error = (404,"Not Found")
        let (statusCode,statusMessage) = http404Error
        print("The status code is \(statusCode)")
        print("The status Message is \(statusMessage)")
        
        
        let (justTheStatusCode,_) = http404Error
        print("The status code is \(justTheStatusCode)")
        
        print("The status code is \(http404Error.0)")
        print("The status message is \(http404Error.1)")
        
        let http200Status = (statusCode:200,description:"OK")
        print("The status code is \(http200Status.statusCode)")
        print("The status message is \(http200Status.description)")
    }
    
    // 数组
    func ArrayFunc(){
        let someInts = [Int]()
        print("someInts is of type[Int] with \(someInts.count)Items")
        
        let threeDoubles = [Double](count: 3, repeatedValue: 0.0)
        print(threeDoubles)
        
        let anotherTheeDoubles = [Double](count: 3, repeatedValue: 2.5)
        print(anotherTheeDoubles)
        
        let sixDoubles = threeDoubles + anotherTheeDoubles
        print(sixDoubles)
        
        var shoppingList = ["eggs","Milk"]
        shoppingList.append("apples")
        print(shoppingList)
    }
    
    // 字典
    func DictionaryFunc(){
        var airports:[String:String] = ["YYZ":"Toronto Pearson","DUB":"Dublin"]
        airports["LHR"] = "London"
        airports["LHR"] = "London Heathrow"
        print(airports)
        
        if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB"){
            print("The old value for DUB was \(oldValue).")
        }
        
        if let airportName = airports["DUB"] {
            print("The name of the airport is \(airportName).")
        } else {
            print("That airport is not in the airports dictionary.")
        }
        
        for (airpotCode,airportName) in airports{
            print("\(airpotCode):\(airportName)")
        }
        
        for airportCode in airports.keys{
            print("Airport code:\(airportCode)")
        }
        
        for airportName in airports.values{
            print("Airport Name:\(airportName)")
        }
        
    }
    
}

