enum Shape{
    case square(Int)
    case rectangle(Int,Int)
    case triangle(Double,Double)
}
var square=Shape.square(10)
var rectangle=Shape.rectangle(10,20)
var triangle=Shape.triangle(10,20)
var shapes=[square,rectangle,triangle]

func calculateArea(shape:Shape)->Void{
    switch shape{
        case .square(let side):
            print("This is a square! The area is \(side*side)")
        case let .rectangle(length,breadth):
            print("This is a Rectangle! The area is \(length*breadth)")
        case let .triangle(base,height):
            print("This is a Triangle! The area is \(0.5*base*height)")
    }
}
for shape in shapes{
    calculateArea(shape:shape)
}
// enum Beverage: CaseIterable { - incompatible needs swift 4.2
//     case coffee, tea, juice
// }
// let numberOfChoices = Beverage.allCases.count
// print("\(numberOfChoices) beverages available")

enum Season:String{
    case spring,summer,winter,autumn
}
print(Season.spring.rawValue)

enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}
let possiblePlanet = Planet(rawValue: 7)
let positionToFind = 11
if let somePlanet = Planet(rawValue: positionToFind) {
    switch somePlanet {
    case .earth:
        print("Mostly harmless")
    default:
        print("Not a safe place for humans")
    }
} else {
    print("There isn't a planet at position \(positionToFind)")
}