//For In Loop
//Arrays
var months:[String]=["January","February","March","April","May","June","July", "August", "September", "October", "November", "December"]
for month in months{
    print(month,terminator:" ")
}
//Dictionaries
var daysInAMonth:[String:Int]=["January":1,"February":2,"March":3,"April":4,"May":5,"June":6,"July":7, "August":8, "September":9, "October":10, "November":11, "December":12]
for (month,days) in daysInAMonth{
    print("\(month) has \(days)")
}
for month in months{
    print("\(month) has \(daysInAMonth[month])")
}

for i in 1...10{
    print(i,terminator:" ")
}
//Stride
let minutes=60
let minuteInterval = 5
for tickMark in stride(from: 0, to: minutes, by: minuteInterval) {
    print("tick tock - \(tickMark)")
}
//while
var i=0
while(i<=5){
    print(i,terminator:" ")
    i+=1
}
print()
//repeat while
i=0
repeat{
    print(i,terminator:" ")
    i+=1
}while(i<0)
print()
//If Else
var temperatureInFahrenheit = 90
if temperatureInFahrenheit <= 32 {
    print("It's very cold. Consider wearing a scarf.")
} else if temperatureInFahrenheit >= 86 {
    print("It's really warm. Don't forget to wear sunscreen.")
} else {
    print("It's not that cold. Wear a t-shirt.")
}

//Switch

var integer:Int=0
while(integer<=10){
    switch integer {
    case 1:print("One")
    case 2:print("two")
    case 3:print("three")
    case 4:print("four")
    case 5:print("five")
    default:print("Out of Range")
    }
    integer+=1
}
// Interval matching

let approximateCount = 62
let countedThings = "moons orbiting Saturn"
let naturalCount: String
switch approximateCount {
case 0:
    naturalCount = "no"
case 1..<5:
    naturalCount = "a few"
case 5..<12:
    naturalCount = "several"
case 12..<100:
    naturalCount = "dozens of"
case 100..<1000:
    naturalCount = "hundreds of"
default:
    naturalCount = "many"
}
print("There are \(naturalCount) \(countedThings).")

//Tuples
let box=6
let size=box/2
let somePoint = (1, 1)
switch somePoint {
case (0, 0):
    print("\(somePoint) is at the origin")
case (_, 0):
    print("\(somePoint) is on the x-axis")
case (0, _):
    print("\(somePoint) is on the y-axis")
case (-size...size, -size...size):
    print("\(somePoint) is inside the box")
default:
    print("\(somePoint) is outside of the box")
}
//Value Bindings and where statements
let yetAnotherPoint = (1, -1)
switch yetAnotherPoint {
case let (x, y) where x == y:
    print("(\(x), \(y)) is on the line x == y")
case let (x, y) where x == -y:
    print("(\(x), \(y)) is on the line x == -y")
case let (x, y):
    print("(\(x), \(y)) is just some arbitrary point")
}

//Compound cases
var string = "Leela Sathvika Vankadaru"
var vowels=0,consonants=0,others=0
for x in string{
    switch(x){
        case "a", "e", "i", "o", "u": vowels+=1
        case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
     "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":consonants+=1
        default:others+=1
    }
}
print(vowels,consonants,others)

//control transfer statements

//continue
//break 
//return - functions
//throw - Error Handling
//fallthrough
let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"
switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
    description += " a prime number, and also"
    fallthrough
default:
    description += " an integer."
}
print(description)

//Labeled Statements
var n=3
var matrix:[[Int]]=[[1,2,3],[4,5,6],[7,8,9]]
var search=5,count=0
loop: for i in 0..<n{
    for j in 0..<n{
        if(matrix[i][j]==search){
            print("element at \(i,j)")
            break loop
        }
        count+=1
    }
}
print("Number of times loop executed: \(count)")