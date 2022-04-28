//Constants and Variables
let uniqueId="454554574545405"
let firstName:String //type Annotation
firstName="Leela Sathvika" //Intializing Constant
/*
firstName="Sathvika"
Error: note: change 'let' to 'var' to make it mutable
let firstName
^~~
var
*/
var surName:String //type annotation
surName="Vankadaru"
var age:Int,cgpa:Double
var tenth,twelth:Double 
print("Type of age: \(type(of:age)), cgpa: \(type(of:cgpa)), tenth: \(type(of:tenth)), twelth: \(type(of:twelth))")
age=20
cgpa=9.59
tenth=98
twelth=93
print("Age: \(age), CGPA: \(cgpa), 10th: \(tenth), twelth: \(twelth)")
var cgpaRounded=Int(cgpa)
print("cgpaRounded: \(cgpaRounded)")

//Type Alias
typealias distance = UInt8
var toZoho:distance=40
print("Distance to Zoho:\(toZoho)km")
print("Max: \(distance.max), Min: \(distance.min)")
