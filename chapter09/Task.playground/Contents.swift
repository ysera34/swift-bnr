//: Playground - noun: a place where people can play

import Cocoa

var toDoList = [
    "Take out garbage",
    "Pay bills",
    "Cross off finished items",
]
var toDoList1: [String] = [];
for todo in toDoList {
    toDoList1.insert(todo, at: 0)
}
toDoList
toDoList1

// using collection function refer to document
for todo in toDoList.reversed() {
    print(todo)
}
let reversedToDoList = Array(toDoList.reversed())
print(reversedToDoList)

var todo = "Pay bills"
if let i = toDoList.index(of: todo) {
    print(toDoList[i])
}
