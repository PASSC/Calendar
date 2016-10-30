//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var sampleVariable = 1 //define new variable
let sampleConstant = "Constant" // define new constant

var sampleInteger: Int = 10 //define variable with explicit type
let sampleString: String = "Another Constant"

//Including values/expressions inside strings ("The sum is: 4")
let sumString = "The sum is: \(sampleVariable + sampleInteger)"

var sampleList = ["item1", "item2", "item3"] //Define array
var sampleDict = ["key1": "value1", "key2": "value2"] //Define dictionary 

sampleList [1] = "Updated Item" //Setting value of an element 
print(sampleDict["key2"]) //Reading the value of an element

//Defining optional 
var optionalString: String? = "Tmep"

//simple condition 
if (sampleInteger > 4)
{
    print("true")
}
else
{
    //using "if" and "let" together allows you to check for values that you may be missing
    if let nonOptionalString = optionalString
    {
        print("The string's value is: \(nonOptionalString)")
    }
    else
    {
        //if here, optionalString's value = nil
    }
}

switch sampleString
{
    //Switch statements aren't limited to just integers 
    case "Constant":
        sampleInteger = 10
    
    //no need to add 'break' statements. Only matching ones will be executed
    case "Another Constant", "Some Constant":
        sampleInteger = 11
    
    //Switch statements support a variety of comparison operations 
    case let x where x.hasPrefix("Constant"):
        sampleInteger = 12
    
    //Switch must cover all cases, so use default case 
    default:
        sampleInteger = 13
}

//Simple for loop 
for i in 0 ... 6
    //... (includes both the lower and the upper values) or ..< 
    //(omits the upper value).
{
    print("This is round #\(i)")
}

//simple loop on a dictionary 
for (key, value) in sampleDict
{
    print ("The value for \(key) is \(value)")
}

//simple loop on array 
for item in sampleList
{
    print ("The current item is \(item)")
}

//Defining functions 
func sampleFunction (param1: Int, param2: String) -> String
{
    if (param1 == 0)
    {
        return param2
    }
    
    else
    {
        return "Not Zero"
    }
}

//Function can return multiple values by using tuples 
func getChipmunksNames() -> (String, String, String)
{
    return ("Simon", "Alvin", "Theodore")
}

//Access specific member of tuple using .  followed by the index 
//Tuple - compound type
print ("The eldest chimpunk is: \(getChipmunksNames()).0");

//Function can take a variable number of arguments, as an array
func sum (numbers: Int...) -> Int
{
    var sum = 0
    for curNum in numbers
    {
        sum += curNum
    }
    return sum
}


//Call the function with any amount of elements for the numbers argument 
print ("The sum of no numbers is: \(sum())")
print ("The sum of three numbers is: \(sum(numbers: 1, 2, 3))")
print ("The sum of six numbers is: \(sum(numbers: 1, 4, 7, 2, 9, 124))")

//Fucntions can be nested (you can define a function inside another function)
func writeStory(firstWord: String) -> String
{
    var curStory = "Once there was a \(firstWord)"
    
    //Inner functions can access the variables from the outer function 
    func continueStory()
    {
        curStory += " and they lived happily ever after"
    }
    
    continueStory()
    return curStory
}

//Define class 
class Animal
{
    //Properties are declared like variables, but only exist within the class' cont ext 
    var name = "Unknown Species"
    var sound = "Silence"
    
    //This is a basic initializer 
    init(name: String, sound: String)
    {
        self.name = name
        self.sound = sound
    }
    
    func makeSound() -> String
    {
        return sound
    }
}

//Instantiate class and access properties 
var animal = Animal (name: "Dog", sound: "Bark")
animal.name = "Stray Dog"
print ("A \(animal.name) make a \(animal.makeSound()) sound ")

//Define subclass




