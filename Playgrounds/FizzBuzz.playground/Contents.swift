import UIKit

var greeting = "Hello, playground"
//print number from 1 to 20 - new lines each entry
// instead of the number - 3 cases
// multimples of 3 - print "Fizz" instead of the number
// multiples of 5 - print "Buzz" in
// 3 and 5 - "FizzBuzz"

var result = ""
for num in 1...20{
    
    result = (num % 3 == 0 ? "Fizz" : "") + (num % 5 == 0 ? "Buzz" : "")
    print((result == "") ? num : result)
}




//let words = ["one", "two", "three", "four", "five"]
//
//for word in words {
//    print(word)
//}
//
//for num in 1...5{
//    print(num)
//}
//
//for _ in 1...10{
//    print("loop")
//}
//
//



























//for idx in 1...20{
//    if(idx % 2 == 0){
//        print("even \(idx)")
//    }
//    
//    if(idx % 2 != 0){
//        print("odd \(idx)")
//    }
//    
//    if(idx % 3 == 0){
//        print("\(idx) is divisible by 3")
//    }
//    
//    if(idx % 5 == 0){
//        print("\(idx) is divisible by 5")
//    }
//}
