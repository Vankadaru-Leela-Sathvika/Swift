var optionalString:String?="Hello"
var nonOptionalString:String="Hello"
print(optionalString!,nonOptionalString)
print("""
    type of optional String: \(type(of:optionalString))
    type of non Optional String: \(type(of:nonOptionalString))
    """)
if(optionalString == nonOptionalString){
    print("They are equal of equal values")
}
if(type(of:optionalString)==type(of:nonOptionalString)){
    print("They are of equal Types")
}
else{
    print("They are not equal Types")
}

/*
type of optional String: Optional<String>
type of non Optional String: String
They are equal of equal values
They are not equal Types
*/