//: Playground - noun: a place where people can play

import Cocoa

let playground = "Hello, playground"
var mutablePlayground = "Hello, mutable playground"
mutablePlayground += "!"

for c: Character in mutablePlayground.characters {
    print("\(c)")
}

let oneCoolDude = "\u{1F618}"
let aAcute = "\u{0061}\u{0301}"
for scalar in playground.unicodeScalars {
    print("\(scalar.value)")
}

// 100 on the console is an integer-32bit
// the integer 100 is 64 hexadecimal
print("\u{0064}")

let aAcutePrecomposed = "\u{00E1}"
let b = (aAcute == aAcutePrecomposed)
print ("aAcute: \(aAcute.characters.count); aAcutePrecomposed: \(aAcutePrecomposed.characters.count)")

//let index = playground[3]
let start = playground.startIndex
let end = playground.index(start, offsetBy: 4)
let fifthCharacter = playground[end]
let range = start...end
let firstFive = playground[range]


