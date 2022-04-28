//Functions
func saySomething(thought:String)->Void{
    let thought=thought
    print(thought)
}
saySomething(thought:"Hi")
//function with no parameters or return values
func saySomething(){
    print("Hello World")
}
saySomething()
//function with multiple parameters
func saySomething(person:String,thought:String){
    print("\(person) says \(thought)")
}
saySomething(person:"Eleanor Roosevelt",thought:"If life were predictable it would cease to be life, and be without flavor.")
//function with multiple return values
func operations(a:Int,b:Int)->(sum:Int,diff:Int,product:Int){
    return (a+b,a-b,a*b)
}
var values=operations(a:10,b:20)
print(values)
//Argument labels
func calcTimeinSeconds(from start:(Int,Int)=(0,0),to end:(Int,Int))->Int?{
    guard start<=end else {
        return nil
    }
    var seconds:Int 
    var mins:Int=0,hrs:Int=0
    if(end.1>=start.1){
        mins=(end.1-start.1)
    }
    else{
        mins=(end.1+60-start.1)
        hrs-=1
    }
    hrs+=end.0-start.0
    seconds=hrs*3600+mins*60
    return seconds 
}
print(calcTimeinSeconds(to:(10,1)) ?? "wrong time")
print(calcTimeinSeconds(from:(2,0),to:(4,0)) ?? "wrong time")
print(calcTimeinSeconds(from:(6,0),to:(4,0)) ?? "wrong time")
//No argument labels
func add(_ a:Int,b:Int)->Int{
    return a+b 
}
print(add(10,b:15))

func sum(_ numbers: Int...)->Int{
    var total:Int=0
    for number in numbers{
        total+=number
    }
    return total
}
print(sum(1,2,3),sum(1,2,3,4,5))

//In-Out parameters
func addi(_ total:inout Int,_ newValue:Int)->Void{
    total+=newValue
}
func subi(_ total:inout Int,_ newValue:Int)->Void{
    total-=newValue
}
func multiplyi(_ total:inout Int,_ newValue:Int)->Void{
    total*=newValue
}
var total=0
addi(&total,10)
print(total)
addi(&total,20)
print(total)
addi(&total,30)
print(total)

var mathFunction:(inout Int,Int)->Void = addi
mathFunction(&total,10)
print(total)
mathFunction=subi 
mathFunction(&total,20)
print(total)
mathFunction=multiplyi
mathFunction(&total,3)
print(total)
//function Type as Parameter
func printResult(_ mathFunction:(inout Int,Int)->Void,_ a:inout Int,_ b:Int)->Void{
    mathFunction(&a,b)
    print(a)
}
total=0
printResult(addi,&total,10) //10
printResult(subi,&total,20) //-10
printResult(multiplyi,&total,-3) //30

//functions as Return Types and nested functions
func chooseStepFunction(forward: Bool) -> (Int) -> Int {
    func stepForward(input: Int) -> Int { return input + 1 }
    func stepBackward(input: Int) -> Int { return input - 1 }
    return forward ? stepForward : stepBackward
}
var currentValue = 10
let moveNearerToZero = chooseStepFunction(forward: currentValue < 0)
while currentValue != 0 {
    print("\(currentValue)")
    currentValue = moveNearerToZero(currentValue)
}
print("zero!")