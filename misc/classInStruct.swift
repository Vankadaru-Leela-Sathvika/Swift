struct X {
    var structVal=0
    var classY:Y=Y()
}
class Y{
    var classVal=0
}

var a=X()
var b=a 
print("Before Changing: ") 
print("a.structVal=\(a.structVal) b.structVal=\(b.structVal)")
print("a.classY.classVal=\(a.classY.classVal) b.classY.classVal=\(b.classY.classVal)\n")
b.structVal=10
b.classY.classVal=10
print("After Changing: ") 
print("a.structVal=\(a.structVal) b.structVal=\(b.structVal)")
print("a.classY.classVal=\(a.classY.classVal) b.classY.classVal=\(b.classY.classVal)")

//Value Types are always passed as values[copies] and reference types are always passed as references
//So total memory alocated for a and b will be 3

/*
Before Changing: 
a.structVal=0 b.structVal=0
a.classY.classVal=0 b.classY.classVal=0

After Changing: 
a.structVal=0 b.structVal=10
a.classY.classVal=10 b.classY.classVal=10
*/