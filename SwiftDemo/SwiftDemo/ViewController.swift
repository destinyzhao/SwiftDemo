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
        
//        let sqliteLogManager = SqliteLogManager()
//        userController.delegate = sqliteLogManager
//        userController.login()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // 结构体的逐一成员构造器&值类型的构造器代理
    /*
    let twoByTwo = Size(width: 2.0, height: 2.0)
    print(twoByTwo)
    
    let basicRect = Rect()
    print(basicRect)
    let originRect = Rect(origin: Point(x: 2.0, y: 2.0), size: Size(width: 5.0, height: 5.0))
    print(originRect)
    let centerRect = Rect(center: Point(x: 4.0, y: 4.0), size: Size(width: 3.0, height: 3.0))
    print(centerRect)
    */
    struct Size{
        var width = 0.0,height = 0.0
    }
    struct Point {
        var x = 0.0,y = 0.0
    }
    struct Rect {
        var origin = Point()
        var size = Size()
        init(){}
        init(origin:Point,size:Size){
            self.origin = origin
            self.size = size
        }
        init(center:Point,size:Size){
            let originX = center.x - (size.width/2)
            let originY = center.y - (size.height/2)
            self.init(origin:Point(x:originX,y: originY),size:size)
        }
    }
    
    // 可选属性类型
    /*
    let cheeseQuestion = SurveyQuestion(text: "Do you like cheese?")
    print(cheeseQuestion.ask())
    cheeseQuestion.response = "Yes, l do like cheese"
    print(cheeseQuestion.response)
    */
    class SurveyQuestion {
        let text:String        // 构造过程中常量属性的修改
        var response:String?
        init(text:String){
            self.text = text
        }
        func ask(){
            print(text)
        }
    }
    
    // 构造器
    /*
    let f = Fahrenheit()
    print("The default temperature is \(f.temperature) ° Fahrenheit")
    */
    struct Fahrenheit {
        var temperature:Double
        init(){
            temperature = 32.0
        }
    }
    
    // 构造参数
    /*
    let boilingPointOfWater = Celsius(fromFahrenheit: 212.0)
    print("沸腾水的温度是:\(boilingPointOfWater.temperatureInCelsius)")
    let freezingPointWater = Celsius(fromKelvin: 273.15)
    print("冰点水的温度:\(freezingPointWater.temperatureInCelsius)")
    let bodyTemperature = Celsius(37.0)
    print(bodyTemperature.temperatureInCelsius)
    */
    struct Celsius {
        var temperatureInCelsius:Double = 0.0
       
        init(fromFahrenheit fahrenheit:Double){
            temperatureInCelsius = (fahrenheit - 32.0)/1.8
        }
        init(fromKelvin kelvin:Double){
            temperatureInCelsius = kelvin - 273.15
        }
        // 不带外部名的构造参数
        init(_ celsius:Double){
            temperatureInCelsius = celsius
        }
    }
    
    // 构造参数的内部名称和外部名称
    /*
    let magenta = Color(red: 1.0, green: 0.0, blue: 1.0)
    print(magenta)
    let halfGray = Color(white: 0.5)
    print(halfGray)
    */
    struct Color {
        let red,green,blue:Double
        init(red:Double,green:Double,blue:Double){
            self.red = red
            self.green = green
            self.blue = blue
        }
        init(white:Double){
            red = white
            green = white
            blue = white
        }
    }
    
    // map用于将每个数组元素通过某个方法进行转换。
    /*
    let a = [1,2,3,4,5]
    let b = a.map(fx)
    print(a,b)
    */
    func fx(x:Int) -> Int{
        return x + 10
    }
    
    // 闭包
    /*
    let guestList = ["chris","Jill","Tim"]
    let fullGreetings = guestList.map({(person:String) -> String in return "Hello,\(person)!" })
    let fullGreetings = guestList.map({(person) -> String in return "Hello,\(person)!"})
    let fullGreetings = guestList.map({person in "Hello,\(person)!"})
    let fullGreetings = guestList.map({"Hello,\($0)"})
    let fullGreetings = guestList.map(){"Hello,\($0)"}
    let fullGreetings = guestList.map{"Hello,\($0)"}
    */
    func greetPeople(person:String) -> String{
        return "Hello,\(person)!"
    }
    
    func bibaoFunction(){
        let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
        //let reversed = names.sort({(s1:String,s2:String) -> Bool in return s1 > s2})
        //let reversed = names.sort(){s1,s2 in s1 > s2}
        let reversed = names.sort{ $0 > $1 }
        print(reversed)
    }
    /*
    let digitNames = [0: "Zero", 1: "One", 2: "Two", 3: "Three", 4: "Four", 5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"]
    let numbers = [16, 58, 510]
    let strings = numbers.map{(var number) -> String in var output = ""
        while number > 0{
        output = digitNames[number % 10]! + output
        number /= 10
        }
        return output
    }
    print(strings)
    */
    
    /*
    let incrementByTen = makeIncrementor(forIncrement: 10)
    print(incrementByTen())
    */
    func makeIncrementor(forIncrement amount:Int) -> () -> Int{
        var runningTotal = 10
        func incrementor() -> Int{
            runningTotal += amount
            return runningTotal
        }
        return incrementor
    }
    
    // 函数类型作为返回类型
    func stepForward(input:Int) -> Int{
        print("1")
        return input + 1
    }
    func stepBackward(input:Int) -> Int{
        print("2")
        return input - 1
    }
    func chooseStepFunction(backwards: Bool) -> (Int) -> Int {
        return backwards ? stepBackward : stepForward
    }
    
    // 函数类型
    func addTwoInts(a:Int, b:Int) -> Int{
        return a + b
    }

    // 输入输出参数
    func swapTwoInts(inout a:Int,inout _ b:Int){
        let temporaryA = a
        a = b
        b = temporaryA
    }
    
    // 默认参数
    func someFunction(parameterWithDefault:Int = 12){
        print(parameterWithDefault);
    }
    
    // 可变参数
    func arithmeticMean(numbers:Double...) ->Double{
        var total:Double = 0
        for number in numbers{
            total += number
        }
        return total / Double(numbers.count)
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
    
    func returnFIfteen1(number:Int) -> Int{
        var y = number
        func add(num:Int) -> Int{
           return num + 5
        }
        return add(y)
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

