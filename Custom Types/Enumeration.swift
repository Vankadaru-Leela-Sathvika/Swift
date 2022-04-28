enum Shape{
    case triangle(Int,Int,Int)
    case square(Int,Int,Int,Int)
    case rectangle(Int,Int,Int,Int)
    case pentagon(Int,Int,Int,Int,Int)
}
var triangle=Shape.triangle(10,20,30)
var square=Shape.square(10,10,10,10)

var shapes:[Shape]=[triangle,square]