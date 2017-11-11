//: Playground - noun: a place where people can play

import Cocoa

var bucketList0: Array<String>
var bucketList1: [String] = ["Climb Mt. Everest"]
var bucketList2 = ["Climb Mt. Everest"] // type inference

//bucketList2.append("Fly hot air balloon to Fiji")
//bucketList2.append("Watch the Load of the Rings trilogy in one day")
//bucketList2.append("Go on a walkabout")
//bucketList2.append("Scuba dive in the Great Blue Hole")
//bucketList2.append("Find a triple rainbow")
var newItems = [
    "Fly hot air balloon to Fiji",
    "Watch the Load of the Rings trilogy in one day",
    "Go on a walkabout",
    "Scuba dive in the Great Blue Hole",
    "Find a triple rainbow"
]

//for item in newItems {
//    bucketList2.append(item)
//}
bucketList2 += newItems

bucketList2.remove(at: 2)
bucketList2
print("bucketList2.count : \(bucketList2.count)")
print(bucketList2[0])
print(bucketList2[0...2])

// update value of specific index
print(bucketList2[2])
bucketList2[2] += " in Australia"
print(bucketList2[2])

// change value of specific index
print(bucketList2[0])
bucketList2[0] = "Climb Mt. Kilimanjaro"
print(bucketList2[0])

// insert value in specific index
bucketList2.insert("Toboggan across Alaska", at:2)

