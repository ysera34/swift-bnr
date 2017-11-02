//: Playground - noun: a place where people can play

import Cocoa

for i in 1...10 {
    if i % 3 == 0 {
        print("FIZZ")
    } else if i % 5 == 0 {
        print("BUZZ")
    } else {
        print(i)
    }
}

var i = 1
while i <= 10 {
    if i % 3 == 0 {
        print("FIZZ")
    } else if i % 5 == 0 {
        print("BUZZ")
    } else {
        print(i)
    }
    i += 1
}
