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
var marks=(tenth:tenth,twelth:twelth,cgpa:cgpa)
print("Tuple marks :\(marks)")
print("Age: \(age), CGPA: \(marks.cgpa), 10th: \(tenth), twelth: \(marks.1)")
var cgpaRounded=Int(cgpa)
print("cgpaRounded: \(cgpaRounded)")
var isStudying:Bool=true
print("Still in College: \(isStudying)")
//Type Alias
typealias distance = UInt8
var toZoho:distance=40
print("Distance to Zoho:\(toZoho)km")
print("distance Type - Max: \(distance.max), Min: \(distance.min)")

/*
Type of age: Int, cgpa: Double, tenth: Double, twelth: Double
Tuple marks :(tenth: 98.0, twelth: 93.0, cgpa: 9.5899999999999999)
Age: 20, CGPA: 9.59, 10th: 98.0, twelth: 93.0
cgpaRounded: 9
Still in College: true
Distance to Zoho:40km
distance Type - Max: 255, Min: 0
*/