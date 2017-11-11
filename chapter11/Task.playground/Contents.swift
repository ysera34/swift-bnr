//: Playground - noun: a place where people can play

import Cocoa

// superset, subset
let myCities = Set(["Atlanta", "Chicago", "Jacksonville", "New York", "San Francisco",])
let yourCities = Set(["Chicago", "San Francisco", "Jacksonville",])
let isSuperSet = myCities.isSuperset(of: yourCities)


// union
var groceryBag = Set(["Apples", "Oranges", "Pineapples"])
// let friendsGroceryBag = Set(["Bananas", "Cereal", "Milk", "Oranges"])
let commonGroceryBag = Set(["Bananas", "Cereal", "Milk", "Oranges"]).union(groceryBag)
for food in commonGroceryBag {
    print(food)
}

// intersection
// let roommatesGroceryBag = Set(["Apples", "Bananas", "Cereal", "Toothpaste"])
let itemsToReturn = commonGroceryBag.intersection(Set(["Apples", "Bananas", "Cereal", "Toothpaste"]))
for food in itemsToReturn {
    print(food)
}
