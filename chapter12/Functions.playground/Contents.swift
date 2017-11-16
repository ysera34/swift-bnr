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
