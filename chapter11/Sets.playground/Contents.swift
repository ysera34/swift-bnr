//: Playground - noun: a place where people can play

import Cocoa

var groceryBag = Set<String>()
groceryBag.insert("Apples")
groceryBag.insert("Oranges")
groceryBag.insert("Pineapples")
// What if you want to name these fruits?

groceryBag
groceryBag.insert("Pineapples")

groceryBag
// Will the index be pushed?
groceryBag.insert("Oranges")

groceryBag
// No.

for food in groceryBag {
    print(food)
}
// The original index is maintained.

// Another way to initialize.
var groceryBag1 = Set(["Apples", "Oranges", "Pineapples"])
for food in groceryBag1 {
    print(food)
}
let equal1 = (groceryBag == groceryBag1)

var groceryBag2: Set = ["Apples", "Oranges", "Pineapples"]
for food in groceryBag2 {
    print(food)
}
let equal2 = (groceryBag1 == groceryBag2)

let hasBananas = groceryBag.contains("Bananas")

// union
let friendsGroceryBag = Set(["Bananas", "Cereal", "Milk", "Oranges"])
let commonGroceryBag = groceryBag.union(friendsGroceryBag)
for food in commonGroceryBag {
    print(food)
}

// intersection
let roommatesGroceryBag = Set(["Apples", "Bananas", "Cereal", "Toothpaste"])
let itemsToReturn = commonGroceryBag.intersection(roommatesGroceryBag)

// relatively prime
let yourSecondBag = Set(["Berries", "Yogert"])
let roommatesSecondBag = Set(["Grapes", "Honey"])
let disjoint = yourSecondBag.isDisjoint(with: roommatesGroceryBag)
// true ==> So, there is no such material.
