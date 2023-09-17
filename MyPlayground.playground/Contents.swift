import UIKit

var greeting = "Hello, playground"

var myName = "Nantachai"
myName = "Benz"

var pi = 3.14
pi = 6.28

var myNumber: Int = 5

var mySecNumber: Double = 3.14

var myMessage:String = "Message"

var clubMember:Bool = true

var myRsult = Double(myNumber) + mySecNumber

var userName:String? = nil

userName = "Peter"

print(userName!)


var currentTemp = 100

if currentTemp >= 100 {
    print("น้ำเดือด")
} else {
    print("น้ำยังไม่เดือด")
}


let hourOfDay = 8
var timeOfDay = ""

if hourOfDay < 6 {
    timeOfDay = "Early morning"
} else if hourOfDay < 12 {
    timeOfDay = "Morning"
} else if hourOfDay < 17 {
    timeOfDay = "Evening"
} else {
    timeOfDay = "Night"
}

switch hourOfDay {
case 0..<6:
    timeOfDay = "Early morning"
case 6..<12:
    timeOfDay = "Morning"
case 12..<17:
    timeOfDay = "Evening"
default:
    timeOfDay = "Night"
}

let name = "steve"
let age = "age"

print("\(name) is \(age) year old")

func displayPi() {
    print(pi)
}

displayPi()

func triple(value: Int) {
    let result = value * 3
    print(result)
}

triple(value: 10)

func addNumber(firstNumber:Int, SecNumber:Int) -> Int{
    let result = firstNumber + SecNumber
    return result
//    print(result)
}

let newResult = addNumber(firstNumber: 5, SecNumber: 10)
print(newResult)



