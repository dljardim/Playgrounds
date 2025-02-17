import UIKit

import UIKit

func rollDice(diceSides:Int, numberOfDice:Int){
    var total:Int = 0
    var roll:Int
    
    print("Rolling \(numberOfDice), \(diceSides)-sided dice:")
    
    for index in 1...numberOfDice{
        roll = Int.random(in:1...diceSides)
        print("Dice #\(index) rolled a \(roll)")
        total += roll
    }
    
    print("Total Roll: \(total)")
}

func rollDice_OneLine(diceSides:Int, numberOfDice:Int){
    var total:Int = 0
    var roll:Int
    var roleString = ""
    
    print("Rolling \(numberOfDice), \(diceSides)-sided dice:")
    
    for index in 1...numberOfDice{
        roll = Int.random(in:1...diceSides)
        roleString += (index != numberOfDice) ? "\(roll)," : "\(roll)"
        total += roll
    }
    
    print(roleString)
    print("Total Roll: \(total)")
}

func getRoll()->Int{
    return 1
}

func singleLineReturn()->String{
    "\(1)"
}

func run(){
    

print("---------------- BEGIN ----------------")

rollDice(diceSides: 6, numberOfDice:5)
print("")
rollDice_OneLine(diceSides: 6, numberOfDice:5)

print("getRoll: \(getRoll())")
print(singleLineReturn())

print("---------------- END ------------------")

}

run()

















