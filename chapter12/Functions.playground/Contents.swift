//: Playground - noun: a place where people can play

import Cocoa

func printGreeting() {
    print("Hello, playground");
}
printGreeting()

func printPersonalGreeting(name: String) {
    print("Hello \(name), welcome to your playground")
}
printPersonalGreeting(name: "Matt")

func divisionDescriptionFor(numerator: Double, denonimator: Double) {
    print("\(numerator) divided by \(denonimator) equals \(numerator / denonimator)")
}
divisionDescriptionFor(numerator: 9.0, denonimator: 3.0)

// They are treated differently because they have the same name but different arguments.
func printPersonalGreeting(to name: String) {
    print("Hello \(name), welcome to your playground")
}
printPersonalGreeting(to: "Matt")

func printPersonalGreeting1(to: String) {
    let name = to
    print("Hello \(name), welcome to your playground")
}
printPersonalGreeting(to: "Matt")

// variadic arguments
func printPersonalGreetings(to names: String...) {
    for name in names {
        print("Hello \(name), welcome to your playground")
    }
}
printPersonalGreetings(to: "Alex", "Chris", "Drew", "Pat")

// parameter default value
func divisionDescriptionFor1(numerator: Double,
                             denonimator: Double,
                             withPunctuation punctuation: String = ".") {
    print("\(numerator) divided by \(denonimator) equals \(numerator / denonimator)\(punctuation)")
}
divisionDescriptionFor1(numerator: 9.0, denonimator: 3.0)
divisionDescriptionFor1(numerator: 9.0, denonimator: 3.0, withPunctuation: "!")

// in-out parameter
var error = "The request failed"
func appendErrorCode(_ code: Int, toErrorString errorString: inout String) {
    if code == 400 {
        errorString += " bad request."
    }
}
appendErrorCode(400, toErrorString: &error)
error
// left side of mutating operator isn't mutable: 'errorString' is a 'let' constant
//func appendErrorCode(_ code: Int, toErrorString errorString: String) {
//    if code == 400 {
//        errorString += " bad request."
//    }
//}

// return value
func divisionDescriptionFor2(numerator: Double,
                             denonimator: Double,
                             withPunctuation punctuation: String = ".") -> String {
    return"\(numerator) divided by \(denonimator) equals \(numerator / denonimator)\(punctuation)"
}
print(divisionDescriptionFor2(numerator: 9.0, denonimator: 3.0, withPunctuation: "!"))

// overlap function, enclosing scope
// let num: Double = 2
func areaOfTriangleWith(base: Double, height: Double) -> Double {
    let numerator = base * height // * num
    func divide() -> Double {
        return numerator / 2
    }
    return divide()
}
areaOfTriangleWith(base: 3.0, height: 5.0)
// divide()

// plural return
func sortedEvenOddNumbers(_ numbers: [Int]) -> (evens: [Int], odds: [Int]) {
    var evens = [Int]()
    var odds = [Int]()
    for number in numbers {
        if number % 2 == 0 {
            evens.append(number)
        } else {
            odds.append(number)
        }
    }
    return (evens, odds)
}
let aBunchOfNumbers = [10, 1, 4, 3, 57, 43, 84, 27, 156, 111]
let theSortedNumbers = sortedEvenOddNumbers(aBunchOfNumbers)
print("The even numbers are : \(theSortedNumbers.evens); the odd numbers are : \(theSortedNumbers.odds)")

// optional return
func grabMiddleName(fromFullName name: (String, String?, String)) -> String? {
    return name.1
}
let middleName = grabMiddleName(fromFullName: ("Matt", nil, "Mathias"))
print(middleName)
if let theName = middleName {
    print(theName)
}

// leaving the function midway
func greetByMiddleName(fromFullName name: (first: String, middle: String?, last: String)) {
    guard let middleName = name.middle else {
        print("Hey there!")
        return
    }
    print("Hey \(middleName)")
}
greetByMiddleName(fromFullName: (first: "Matt", middle: "Danger", last: "Mathias"))
greetByMiddleName(fromFullName: ("Matt", nil, "Mathias"))

// type of function
let evenOddFunction: ([Int]) -> ([Int], [Int]) = sortedEvenOddNumbers
let evenOddFunction1: ([Int]) -> ([Int], [Int]) = sortedEvenOddNumbers(_:)
print(evenOddFunction1)
print(evenOddFunction1(aBunchOfNumbers))

