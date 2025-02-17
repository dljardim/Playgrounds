import UIKit

func ex2(){
    
    // Enum with associated values
    enum Weather{
        case sunny(degrees:Int)
        case rainy(intensity:String)
        case cloudy
        case snowy(inches:Double)
    }
    
    func describeWeather(myWeather: Weather) -> String {
        
        switch myWeather {
            case let .sunny(degrees):
                return "It is \(degrees) and I forgot my sunscreen"
            case let .rainy(intensity):
                return "It is raining \(intensity) and I forgot my umbrella"
            case .cloudy:
                return "Cloudy weather sucks"
            case let .snowy(inches):
                return "There are \(inches) and I forgot my gloves"
        }
    }
    
    print(describeWeather(myWeather: Weather.snowy(inches: 20.0)))
}
//ex2()

func ex3(){
    
    // Enum with associated values
    enum Weather{
        case sunny(degrees:Int)
        case rainy(intensity:String)
        case cloudy
        case snowy(inches:Double)
        
        var emoji: String {
            switch self {
                case .sunny: return "☀️"
                case .rainy: return "🌧"
                case .cloudy: return "☁️"
                case .snowy: return "❄️"
            }
        }
        
        var advice: String {
            switch self {
                case .sunny: return "Wear sunglasses!"
                case .rainy: return "Bring an umbrell!a"
                case .cloudy: return "Just another cloudy day."
                case .snowy: return "Stay warm!"
            }
        }
    }
    
    func describeWeather(myWeather: Weather) -> String {
        
        switch myWeather {
            case let .sunny(degrees):
                return "\(myWeather.emoji) It is \(degrees) degrees and I forgot my sunscreen. \(myWeather.advice)"
            case let .rainy(intensity):
                return "\(myWeather.emoji) It rained \(intensity) today and I forgot my umbrella. \(myWeather.advice)"
            case .cloudy:
                return "\(myWeather.emoji) Cloudy weather sucks. \(myWeather.advice)"
            case let .snowy(inches):
                return "\(myWeather.emoji) There are \(inches) inches of snow and I forgot my gloves. \(myWeather.advice)"
        }
    }
    
    print(describeWeather(myWeather: Weather.sunny(degrees: 100)))
    print(describeWeather(myWeather: Weather.rainy(intensity: "hard")))
    print(describeWeather(myWeather: Weather.cloudy))
    print(describeWeather(myWeather: Weather.snowy(inches: 20.0)))
}
//ex3()


/*
 
 🎯 Next Challenge: Enum Methods
 Right now, describeWeather is a separate function. Instead, let's move it inside the Weather enum as a method!
 
 🛠 Your Challenge:
 
 Convert describeWeather(myWeather:) into a method inside the Weather enum.
 It should be named getDescription() -> String.
 Call getDescription() directly on Weather values.
 let today = Weather.sunny(degrees: 90)
 print(today.getDescription())
 
 */
func ex4(){
    // Enum with associated values
    enum Weather{
        case sunny(degrees:Int)
        case rainy(intensity:String)
        case cloudy
        case snowy(inches:Double)
        
        var emoji: String {
            switch self {
                case .sunny: return "☀️"
                case .rainy: return "🌧"
                case .cloudy: return "☁️"
                case .snowy: return "❄️"
            }
        }
        
        var advice: String {
            switch self {
                case .sunny: return "Wear sunglasses!"
                case .rainy: return "Bring an umbrella!"
                case .cloudy: return "Just another cloudy day."
                case .snowy: return "Stay warm!"
            }
        }
        
        func getDescription() -> String {
            
            switch self {
                case let .sunny(degrees):
                    return "\(self.emoji) It is \(degrees) degrees and I forgot my sunscreen. \(self.advice)"
                case let .rainy(intensity):
                    return "\(self.emoji) It rained \(intensity) today and I forgot my umbrella. \(self.advice)"
                case .cloudy:
                    return "\(self.emoji) Cloudy weather sucks. \(self.advice)"
                case let .snowy(inches):
                    return "\(self.emoji) There are \(inches) inches of snow and I forgot my gloves. \(self.advice)"
            }
        }
    }
    
    print(Weather.sunny(degrees: 100).getDescription())
    print(Weather.rainy(intensity: "hard").getDescription())
    print(Weather.cloudy.getDescription())
    print(Weather.snowy(inches: 10.0).getDescription())
}
//ex4()


func ex5(){
    /*
    🎯 Next Challenge: Raw Values
    Right now, Weather only stores associated values (like degrees or intensity).
    Let's add raw values to represent a weather category.

    🛠 Your Challenge:

    Modify Weather to have a String raw value:
    enum Weather: String {
        case sunny = "Warm"
        case rainy = "Wet"
        case cloudy = "Overcast"
        case snowy = "Cold"
    }
    Update getDescription() to include the raw value, like:
    ☀️ Warm - It is 100 degrees and I forgot my sunscreen. Wear sunglasses!
    Keep the associated values for sunny(degrees:), rainy(intensity:), etc.
    */
    
    enum Weather{
        case sunny(degrees:Int)
        case rainy(intensity:String)
        case cloudy
        case snowy(inches:Double)
        
        
        var category:String{
            switch self{
                case .sunny: return "Warm"
                case .rainy: return "Wet"
                case .cloudy: return "Overcast"
                case .snowy: return "Cold"
            }
        }
        
        var emoji: String {
            switch self {
                case .sunny: return "☀️"
                case .rainy: return "🌧"
                case .cloudy: return "☁️"
                case .snowy: return "❄️"
            }
        }
        
        var advice: String {
            switch self {
                case .sunny: return "Wear sunglasses!"
                case .rainy: return "Bring an umbrella!"
                case .cloudy: return "Just another cloudy day."
                case .snowy: return "Stay warm!"
            }
        }
        
        func getDescription() -> String {
            
            switch self {
                case let .sunny(degrees):
                    return "\(self.emoji) \(self.category) It is \(degrees) degrees and I forgot my sunscreen. \(self.advice)"
                case let .rainy(intensity):
                    return "\(self.emoji) \(self.category) It rained \(intensity) today and I forgot my umbrella. \(self.advice)"
                case .cloudy:
                    return "\(self.emoji) \(self.category) Cloudy weather sucks. \(self.advice)"
                case let .snowy(inches):
                    return "\(self.emoji) \(self.category) There are \(inches) inches of snow and I forgot my gloves. \(self.advice)"
            }
        }
    }
    
    print(Weather.sunny(degrees: 100).getDescription())
    print(Weather.rainy(intensity: "hard").getDescription())
    print(Weather.cloudy.getDescription())
    print(Weather.snowy(inches: 10.0).getDescription())
}
ex5()
