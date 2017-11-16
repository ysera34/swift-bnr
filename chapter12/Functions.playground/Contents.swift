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
