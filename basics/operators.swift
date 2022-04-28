//Assignment
let a=100
var b=15
//Arithmetic
var sum=a+b
var diff=a-b
var product=a*b
var quotient=a/b
var remainder=a%b
var negRemainder = -a%b 
print("sum: \(sum), difference: \(diff), product: \(product), quotient: \(quotient), Remainder: \(remainder), Negative Remainder:\(negRemainder)\nTypes:") 
print("sum: \(type(of:sum)), difference: \(type(of:diff)), product: \(type(of:product)), quotient: \(type(of:quotient)), Remainder: \(type(of:remainder))") 
var decimal=Double(a)/Double(b) //Explicit type conversion //Type Inference
print("Decimal Division: \(decimal)")
var string1="Hello ",string2="world"
print(string1+string2) //string concatenation
//Unary Plus=+a Minus = -a
//compound assignment => += -= *- /= %=....

//comparison operators
print("== :\(a==b)")
print("!= :\(a != b)")
print("> :\(a>b)")
print("< :\(a<b)")
print(">= :\(a>=b)")
print("<= :\(a<=b)")
//tuple comparison
var x:(Int,Int,Int)=(1,2,3)
var y:(Int,Int,Int)=(1,1,3)
print("x: \(x), y: \(y)")
print("x<y: \(x<y)")

//Ternary Conditional (condtion?a:b)
var age=20
var canVote:Bool = age>=18 ? true : false
print("age: \(age), can Vote: \(canVote)")

//Nil Coalescing (a??b)
var favourite:String?
var defaultVal:String="Vanilla"
print(favourite ?? defaultVal)
favourite="Butter Scotch"
print(favourite ?? defaultVal)

//Range Operators
var start=1,end=5
print("...",terminator:" ")
for x in start...end{
    print(x,terminator:" ")
}
print()
print("..<",terminator:" ")
for x in start..<end{
    print(x,terminator:" ")
}
print()
let range1 = ...end 
print("Range 1: \(type(of:range1))")
let range2 = start...
print("Range 2: \(type(of:range2))")
let range3 = start...end 
print("Range 3: \(type(of:range3))")
let range4 = start..<end 
print("Range 4: \(type(of:range4))")
print(range1.contains(0),range1.contains(10))//true false
print(range2.contains(0),range2.contains(10))//false true

//Logical Operators
var True=true,False=false 
print(!True,!False)//false true
print(True&&False)//false
print(True||False)//true
