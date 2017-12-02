//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"
var playgroundGreeting = str
playgroundGreeting += "! How are you today?"
str

class GreekGod {
    var name: String
    init(name: String) {
        self.name = name
    }
}
let hecate = GreekGod(name: "Hecate")
let anotherHecate = hecate

anotherHecate.name = "AnotherHecate"
anotherHecate.name
hecate.name

struct Pantheon {
    var chiefGod: GreekGod // reference type
}

let pantheon = Pantheon(chiefGod: hecate) // memberwise initializer
let zeus = GreekGod(name: "Zeus") // reference tpye
//pantheon.chiefGod = zeus // Cannot assign to property: 'pantheon' is a 'let' constant
zeus.name = "Zeus Jr."
zeus.name

pantheon.chiefGod.name // AnotherHecate
let greekPantheon = pantheon
hecate.name = "Trivia"
greekPantheon.chiefGod.name
pantheon.chiefGod.name

let athena = GreekGod(name: "Athena")
let gods = [athena, hecate, zeus]
let godsCopy = gods
gods.last?.name = "Jupiter"
gods
godsCopy


let x = 1
let y = 1
x == y             // equality
athena === hecate  // identity
