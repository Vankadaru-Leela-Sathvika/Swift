var x:[String:String?]=[:]
var y:String?="abc"
x["1"]="1"
x["2"]="2"
x["3"]=y
print("Before Changing y to nil")
print(x)
y=nil 
print("After Changing y to nil")
print(x)
print(x["4"])

/*
Before Changing y to nil
["2": Optional("2"), "3": Optional("abc"), "1": Optional("1")]
After Changing y to nil
["2": Optional("2"), "3": Optional("abc"), "1": Optional("1")]
*/