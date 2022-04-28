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
