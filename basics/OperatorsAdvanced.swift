//Bitwise Operators
//NOT
let initialBits: UInt8 = 0b00001111
let invertedBits = ~initialBits
print(initialBits,invertedBits)
//AND
let firstSixBits: UInt8 = 0b11111100
let lastSixBits: UInt8  = 0b00111111
let middleFourBits = firstSixBits & lastSixBits 
print(firstSixBits,lastSixBits,middleFourBits)
//OR
let someBits: UInt8 = 0b10110010
let moreBits: UInt8 = 0b01011110
let combinedbits = someBits | moreBits
print(someBits,moreBits,combinedbits)
//XOR
let firstBits: UInt8 = 0b00010100
let otherBits: UInt8 = 0b00000101
let outputBits = firstBits ^ otherBits
print(firstBits,otherBits,outputBits)
//Shift Operators
//Unsigned
let shiftBits: UInt8 = 4   
print(shiftBits << 1)             
print(shiftBits << 2)             
print(shiftBits << 5)             
print(shiftBits << 6)             
print(shiftBits >> 2)             
//Signed

//Overflow Operators
//Addition
var unsignedOverflow = UInt8.max
unsignedOverflow = unsignedOverflow &+ 1
//Subtraction
unsignedOverflow = UInt8.min
unsignedOverflow = unsignedOverflow &- 1

//Operator Methods
struct Vector2D {
    var x = 0.0, y = 0.0
}

extension Vector2D {
    static func + (left: Vector2D, right: Vector2D) -> Vector2D {
        return Vector2D(x: left.x + right.x, y: left.y + right.y)
    }
    static prefix func - (vector: Vector2D) -> Vector2D {
        return Vector2D(x: -vector.x, y: -vector.y)
    }
}
extension Vector2D {
    static func += (left: inout Vector2D, right: Vector2D) {
        left = left + right
    }
}
extension Vector2D: Equatable {
    static func == (left: Vector2D, right: Vector2D) -> Bool {
        return (left.x == right.x) && (left.y == right.y)
    }
}
let positive = Vector2D(x: 3.0, y: 4.0)
let negative = -positive
let alsoPositive = -negative
let twoThree = Vector2D(x: 2.0, y: 3.0)
let anotherTwoThree = Vector2D(x: 2.0, y: 3.0)
if twoThree == anotherTwoThree {
    print("These two vectors are equivalent.")
}
//Custom operators
//Prefix
prefix operator +++
extension Vector2D {
    static prefix func +++ (vector: inout Vector2D) -> Vector2D {
        vector += vector
        return vector
    }
}
//Infix
infix operator +-: AdditionPrecedence
extension Vector2D {
    static func +- (left: Vector2D, right: Vector2D) -> Vector2D {
        return Vector2D(x: left.x + right.x, y: left.y - right.y)
    }
}
let firstVector = Vector2D(x: 1.0, y: 2.0)
let secondVector = Vector2D(x: 3.0, y: 4.0)
let plusMinusVector = firstVector +- secondVector