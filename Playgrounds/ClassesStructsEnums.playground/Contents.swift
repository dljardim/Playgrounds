import UIKit

// ---------------------------------------------------------------
func ex1(){
    // reference typpes
    class ClassCar{
        var model: String
        var speed: Int
        
        init(model: String, speed:Int){
            self.model = model
            self.speed = speed
        }
        
        func accelerate(){
            self.speed += 10
        }
    }
    
    let car1 = ClassCar(model: "Tesla", speed: 60)
    
    // car2 is a reference - they point to the same car
    let car2 = car1
    
    car2.accelerate()
    print(car1.speed)
    print(car2.speed)
}
//ex1()

// ---------------------------------------------------------------

func ex2(){
    // value types
    struct StructCar{
        var model: String
        var speed: Int
        
        mutating func accelerate(){
            self.speed += 10
        }
    }
    
    var car1 = StructCar(model: "Tesla", speed: 60)
    
    // car2 is a copy of car1 - not the same car
    var car2 = car1
    
    car2.accelerate()
    
    print(car1.speed)
    print(car2.speed)
}
//ex2()
// ---------------------------------------------------------------

func ex3(){
    enum Weather
    {
        case sunny
        case rainy
        case cloudy
        case snowy
        
        var emoji:String{
            switch self {
                case .sunny: return "☀️"
                case .rainy: return "🌧"
                case .cloudy: return "☁️"
                case .snowy: return "❄️"
            }
        }
    }
    
    let currentWeather = Weather.sunny
    print(currentWeather)
}
ex3()
