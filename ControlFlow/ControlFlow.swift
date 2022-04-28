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
