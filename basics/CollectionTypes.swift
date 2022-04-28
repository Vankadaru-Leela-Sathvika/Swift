//Array
var scores:[Int] = [10,20,30,30]
scores.append(40)
print(type(of:scores))
print(scores)
//Set
var subjects=Set<String>()
subjects.insert("Maths")
subjects.insert("Maths")
subjects.insert("French")
subjects.insert("English")
var basicSubjects:Set<String>=["Maths","Science"]
print(subjects)
print(type(of:subjects))
print(basicSubjects)
print(subjects.intersection(basicSubjects))
print(subjects.union(basicSubjects))
print(subjects.symmetricDifference(basicSubjects))
print(subjects.subtracting(basicSubjects))

//subsets
let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

print(houseAnimals.isSubset(of: farmAnimals))
// true
print(farmAnimals.isSuperset(of: houseAnimals))
// true
print(farmAnimals.isDisjoint(with: cityAnimals))
// true

//Dictionaries
var landOwners:[String:String?]=[:]
print(type(of:landOwners))
landOwners["a"]="abc"
landOwners["b"]="bcd"
print(landOwners)
let land=landOwners.keys
let landArray=[String](landOwners.keys)
print(land,landArray)
let owners=landOwners.values
print(owners)
print(landOwners["c"])