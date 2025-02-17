import UIKit

var greeting = "Hello, playground"

// function overloading -
// functions can have the same name if they have different parameters

//func helloNothing(_ nothing:something?)

func hello(name:String){
    print("Hello, \(name)")
}

func hello(name:String, title:String){
    print("Hello, \(title) \(name)")
}

// external argument labels -
// codesense will show argLabel
// codesense will not show arg
// internal code will still use arg as normal
func sayHello(argLabel arg:String){
    print(arg)
}

func averageTwoNumbers(num1:Int, num2:Int)->Int{
    return((num1 + num2)/2)
}

// eliminate the argument labels when calling
func averageTwoNumbersNoLabels(_ num1:Int, _ num2:Int)->Int{
    return ((num1 + num2)/2)
}


averageTwoNumbers(num1: 2, num2: 4)
averageTwoNumbersNoLabels(2,4)



