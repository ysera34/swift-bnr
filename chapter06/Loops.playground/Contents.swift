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


var i = 1
while i < 6 {
    myFirstInt += 1
    print(myFirstInt)
    i += 1
}

/*
while shields > 0 {
    // fire!!
    print("Fire blasters!")
}

repeat {
    // fire!!
    print("Fire blasters!")
} while shields > 0
*/


var shields = 5
var blastersOverheating = false
var blasterFireCount = 0
var spaceDemonsDestroyed = 0
while shields > 0 {
    
    if spaceDemonsDestroyed == 5 {
        print("You beat the game!")
        break
    }
    
    if blastersOverheating {
        print("Blasters are overheated! Cooldown initiated.")
        sleep(5)
        print("Blasters ready to fire")
        sleep(1)
        blastersOverheating = false
        blasterFireCount = 0
    }
    
    if blasterFireCount > 5 {
        blastersOverheating = true
        continue
    }
    // fire!!
    print("Fire blasters! blasterFireCount : \(blasterFireCount)")
    
    blasterFireCount += 1
    spaceDemonsDestroyed += 1
}
