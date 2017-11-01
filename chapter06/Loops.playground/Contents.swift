//: Playground - noun: a place where people can play

import Cocoa

var myFirstInt: Int = 0

for i in 1...5 {
//for _ in 1...5 {
    myFirstInt += 1
    myFirstInt
//    print(myFirstInt)
    print("myFirstInt equals \(myFirstInt) at iteration \(i)")
}


for i in 1...100 where i % 3 == 0 {
    print(i)
}

for i in 1...100 {
    if i % 3 == 0 {
        print(i)
    }
}
