//: Playground - noun: a place where people can play

import Cocoa

let empty = ""
let start = empty.startIndex
let end = empty.endIndex
//if (end - start) == 0 {
//    print("empty is empty")
//}
let a = (start == end)


// Replace "Hello" with an instance configured as a Unicode scalar.
let hello = "Hello"
for scalar in hello.unicodeScalars {
    print("\(scalar.value)")
}

// 72 101 108 108 111
let helloUni = "\u{0048}\u{0065}\u{006C}\u{006C}\u{006F}"

