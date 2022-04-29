//closures

var arr=[109,209,309,409,509]

//Simple
var reverse:[Int]=arr.map({(element:Int) -> Int 
    in
    var number=element
    var reverse=0
    while(number>0){
        reverse=reverse*10+number%10
        number/=10
    }
    return reverse
})
print(reverse)

//Inferring Type from context
reverse=arr.map({(element) 
    in
    var number=element
    var reverse=0
    while(number>0){
        reverse=reverse*10+number%10
        number/=10
    }
    return reverse
})
print(reverse)

//Implicit return from single expression
func reversed(_ element:Int)->Int{
    var number=element
    var reverse=0
    while(number>0){
        reverse=reverse*10+number%10
        number/=10
    }
    return reverse
}

reverse=arr.map({(element) in reversed(element)})
print(reverse)

//Shorthand Arguments
reverse=arr.map({reversed($0)})
print(reverse)

//Trailing closures - incompatible needs swift 5.3
// func sumAndReverse(arr:[Int],sumClosure:(Int)->Int,reverseClosure:(Int)->Int)->Void{
//     var summed=arr.map(sumClosure)
//     var reverse=arr.map(reverseClosure)
//     print(reverse)
// }
// sumAndReverse(arr:arr){(element:Int)->Int in 
//     var number=element
//     var sum=0
//     while(number>0){
//         sum+=number%10
//         number/=10
//     }
//     return sum 
// } 
// reverseClosure:{(element:Int)->Int in 
//     reversed(element)
// }

//escaping closures
var operations:[(Int,Int)->Int]=[]
func addOperation(op:@escaping (Int,Int)->Int)->Void{
    operations.append(op)
}
addOperation(op:{(a,b) in a+b})
print(operations)

//autoclosure
func doOperation(operation:@autoclosure ()->Int)->Void{
    print(operation())
}
doOperation(operation:reversed(201))

//escaping and autoclosure

var greetings:[()->Void]=[]

func addGreeting(greeting: @autoclosure @escaping ()->Void)->Void{
    greetings.append(greeting)
}

addGreeting(greeting:print("Hello"))
addGreeting(greeting:print("How are You?"))
for greeting in greetings{
    greeting()
}