import UIKit

func variablesAndInterpolation(){
    var a = 1
    let b = 0
    
    a = 2
    //b = 3
    
    print("a: \(a)")
    print("a: \(b)")
    
    let birthYear:Int = 1990
    var currentAge:Int = 30
    currentAge = 31
    var favoriteLanguage:String = "Swift"
    
    print("I was born in \(birthYear), and now I am \(currentAge) years old.  My favorite language is \(favoriteLanguage).")
}

func mathFunctions(){
    
    func sum(num1:Int, num2:Int)->Int{
        return num1 + num2
    }
    
    func difference(num1:Int, num2:Int)->Int{
        return abs(num1 - num2)
    }
    
    func product(num1:Int, num2:Int)->Int{
        return num1 * num2
    }
    
    func quotient(dividend:Int, divisor:Int)->Int{
        return dividend / divisor
    }
    
    func remainder(dividend:Int, divisor:Int)->Int{
        var quotient = dividend / divisor
        var remainder = dividend - (quotient * divisor)
        return remainder
    }
}

func ex1() {
    let age = 10
    
    if(age > 18){
        print("You are an adult.")
    }else {
        print("You are a minor.")
    }
}


// ex 2
func ex2() {
    for i in 1...10 {
        print(i)
    }
}

// ex3
func ex3(){
    
    var current = 5
    while current > 0 {
        print(current)
        current -= 1
    }
    print("Blast off!")
}

func ex4(){
    
    func multiplyNumbers(num1:Int, num2:Int)->Int{
        return num1 * num2
    }
    
    func greet(name: String){
        print("Hello, \(name)")
    }
    
    multiplyNumbers(num1: 2, num2: 4)
    greet(name: "Damian")
    
}




func ex5_iflet(){
    
    //Exercise:
    //Declare an optional String called nickname and set it to nil.
    //Later, assign it a name ("Swiftie").
    //Use if let to safely unwrap and print: "Your nickname is Swiftie" (if it exists).
    
    var nickname:String? = nil
    nickname = "Swiftie"
    
    // if let unwrap
    if let unwrappedNickName = nickname {
        print("Your nickname is \(unwrappedNickName)")
    } else {
        print("nickname is nil")
    }
}
//ex5_iflet()

func ex5_guard_let(){
    
    //    Modify ex5() to use guard let instead of if let.
    //    If nickname is nil, print "No nickname available."
    //    If it has a value, print "Your nickname is [nickname]".
    
    var nickname:String? = nil
    nickname = "Swiftie"
    
    // if let unwrap
    guard let unwrappedNickName = nickname else {
        print("No nickname available.")
        return
    }
    
    print("Your nickname is \(unwrappedNickName)")
}
//ex5_guard_let()


/// ex5 challenge -
/// Modify ex5() to use the ?? operator instead of guard let.
/// If nickname is nil, it should default to "Guest".
/// Print "Your nickname is [nickname]".
func ex5(){
    
    var nickname:String? = nil
    nickname = "Swiftie"
    
    let finalNickname = nickname ?? "Guest"
    
    print("Your nickname is \(finalNickname)")
}
//ex5()


func ex6(){
    /*
     Exercise:
     Declare an array favoriteFoods with at least 3 food names.
     Add one more food using .append().
     Remove the second item from the array.
     Print the first item in the array.
     */
    
    var favoriteFoods = ["Apple", "Banana", "Cherry"]
    favoriteFoods.append("Mango")
    print(favoriteFoods)
    
    favoriteFoods.
}
ex6()
