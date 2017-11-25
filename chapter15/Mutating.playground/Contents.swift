//: Playground - noun: a place where people can play

import Cocoa

func greet(name: String, withGreeting greeting: String) -> String {
    return "\(greeting) \(name)"
}

let personalGreeting = greet(name: "Matt", withGreeting: "Hello,")
print(personalGreeting)

//func greeting(forName name: String) -> ((String) -> String) {
func greeting(forName name: String) -> (String) -> String {
    func greeting(_ greeting: String) -> String {
        return "\(greeting) \(name)"
    }
    return greeting
}

// using closure
let greetMattWith = greeting(forName: "Matt")
let mattGreeting = greetMattWith("Hello,")
print(mattGreeting)

func greeting1(_ greeting: String) -> (String) -> String {
    return { (name: String) -> String in
        return "\(greeting) \(name)"
    }
}

let friendlyGreetingFor = greeting1("Hello,")
let mattGreeting1 = friendlyGreetingFor("Matt")
print(mattGreeting1)


// mutating
struct Person {
    var firstName = "Matt"
    var lastName = "Mathias"
    
    mutating func changeTo(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

var p = Person()
p.firstName // Matt
let changeName = Person.changeTo
// let changeName: (inout Person) -> (String, String) -> ()
// expr_1.Person) -> (String, String) -> ()
let changeNameFromMattTo = changeName(&p)
changeNameFromMattTo("John", "Gallagher")
p.firstName // John

p.changeTo(firstName: "Matt", lastName: "Mathias")
p.firstName // Matt
