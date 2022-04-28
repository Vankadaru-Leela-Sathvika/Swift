//Single Line
var salutation="Dear Friend"
//Multiline
var body="""
        Hi, How are you? I am good.
        Hope you contact me soon.
        Bye
        """
print(salutation)
print(body)

//Unicode
let sparklingHeart = "\u{1F496}" // Unicode scalar U+1F496
print("This is a sparkling heart: \(sparklingHeart)")//String Interpolation
var unicode = "The Unicode for sparkling heart is \\u{1F496}\n"
print(unicode)
//var unicode = #"The Unicode for sparkling heart is \u{1F496}"# //doesnt work due to version incompatibility: Swift 4
//print(unicode)

//Characters
let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
let catString = String(catCharacters)
print(catString)
// Prints "Cat!🐱"

for x in "Hello"{
    print(x)
}
print()

//Value Type and concatenation
var newSalutation=salutation
let comma:Character=","
newSalutation+=" Amy"
newSalutation.append(comma)
print("After Change: ",salutation,newSalutation,separator:"\n")

//string access
print("Count: \(newSalutation.count)")
print("startIndex: \(newSalutation[newSalutation.startIndex])")
var index=newSalutation.index(newSalutation.startIndex,offsetBy: 2)
print("at Index 2: \(newSalutation[index])")
print(type(of:index))//
for index in newSalutation.indices{
    print("\(newSalutation[index]) ", terminator: ",")
}
print()
//Insert Character
newSalutation.insert("?",at:newSalutation.endIndex)
print(newSalutation)
//Insert String
newSalutation.insert(contentsOf:"How are you",at:newSalutation.index(before: newSalutation.endIndex))
print(newSalutation)
//remove - remove(at:index),removeSubrange(range)
index=newSalutation.index(after:newSalutation.index(of:",")!) ?? newSalutation.endIndex
let query=newSalutation[index...]
print(query,type(of:query))
if(type(of:newSalutation)==type(of:query)){
    print("True")
}
else{
    print("False")
}

//print(newSalutation.hasPrefix("Hello")) version incompatible - swift 4
//print(newSalutation.hasSuffix("?")) version incompatible - swift 4
