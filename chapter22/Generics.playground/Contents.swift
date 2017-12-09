//: Playground - noun: a place where people can play

import Cocoa

//struct Stack {
struct Stack<Element> {
//    var items = [Int]()
    var items = [Element]()
    
//    mutating func push(_ newItem: Int) {
    mutating func push(_ newItem: Element) {
        items.append(newItem)
    }
    
//    mutating func pop() -> Int? {
    mutating func pop() -> Element? {
        guard !items.isEmpty else {
            return nil
        }
        return items.removeLast()
    }
}
//var intStack = Stack()
var intStack = Stack<Int>()
intStack.push(1)
intStack.push(2)

print(intStack.pop())
print(intStack.pop())
print(intStack.pop())

var stringStack = Stack<String>()
stringStack.push("this is a string")
stringStack.push("another string")

print(stringStack.pop())
print(stringStack.pop())
print(stringStack.pop())
