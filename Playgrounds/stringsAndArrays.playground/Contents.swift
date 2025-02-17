import UIKit

func ex1(){
    // Write a Swift function called formatGreeting(name: String, age: Int) -> String.
    // The function should return a formatted string like:
    // "Hello, John! You are 25 years old."
    // Use string interpolation (\() ) to insert values into the string.
    // Call the function with name = "Alice" and age = 30, and print the result.
    
    func formatGreeting(name:String, age:Int)->String{
        return "Hello, \(name)! You are \(age) years old."
    }
    
    print(formatGreeting(name: "Alice", age: 30))
}
//ex1()

// primitives v classes
// primitives are passed by value - a copy of a value is passed.
// the original string is not affected

// classes are by reference - and passing by reference

func ex2() {
    var message: String = "Swift is awesome!"
    let num: Int = 42
    message.append(String(num)) // Trying to append an Int
    print(message)
}
//ex2()

class SomeClass {
    
}

struct SomeStructure {
    
}

/*
A) "Swift is great!"
B) "Swift is great"
C) Error: Cannot use + with Strings
D) Error: lang is immutable

🔍 Your Task:

Pick the correct answer.
Explain why.
A <--
B - eliminated due to !
C - elimated + can be used to
D - let is immutable - yes - but only after the initialization
*/



//func ex5() {
//    var phrase = "Learning Swift"
//    phrase[0] = "T"
//    print(phrase)
//}
//ex5()

 
func exA(){
    var address = "123 James St."
    var StreetString = "St."
    var replacementString = "Street"
    
    var newString = address.replacingOccurrences(of: "St.", with: "Street")
    
    var challengeString = address.replacingOccurrences(of: " St.", with: " Street")

    
    print("address: \(address)")
    print("newString: \(newString)")
    print("challengeString: \(challengeString)")

}
//exA()


func exB(){
    var name = "OneHundred"
    
    for char in name.reversed() {
        print(char)
    }
}
//exB()

func exC(){
    var name = "Gallaugher"
    var currentCharacter:String
    let result = String(name.reversed())
    
    print("name: \(name)")
    print("result: \(result)")
   
}
//exC()

// print reverse of name on 1 line
func exD(){
    var backwardsName:String = ""
    var myName:String = "Damian"
    for item in myName{
        backwardsName = String(item) + backwardsName
    }
    print("backwardsName: \(backwardsName)")
}
//exD()

func exE(){
    var myString = "helLo I aM GoOd"
    var lowerCased = myString.lowercased()
    var upperCased = myString.uppercased()
    var capitalized = myString.capitalized
    print(capitalized)
}
//exE()


// add space after every letter
func exF(){
    
    func updateRevealedWord(word: String)->String{
        
        // add a space after every character in the word
        var result:String = ""
        
        for char in word{
            result += String(char) + " "
        }
      
        return result
    }
    
    var input = "SWIFT"
    var result = updateRevealedWord(word: input)
    
    print("result: \(result)")
}
//exF()

func exG(){
    
    // uses String.count
    func addUnderscoreSpace(word: String)->String{
        
        // add a space after every character in the word
        var result:String = ""
        
        for _ in word{
            result += "_ "
        }
        
        let trimmedResult = result.trimmingCharacters(in: .whitespaces)
      
        return trimmedResult
    }
    
    var input = "SWIFT"
    var result = addUnderscoreSpace(word: input)
    
    print("result: \(result)")
}
exG()

