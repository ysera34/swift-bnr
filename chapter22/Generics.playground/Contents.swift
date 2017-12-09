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
    
    func map<U>(_ f: (Element) -> U) -> Stack<U> {
        var mappedItems = [U]()
        for item in items {
            mappedItems.append(f(item))
        }
        return Stack<U>(items: mappedItems)
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

var doubledStack = intStack.map { 2 * $0 }
print(doubledStack.pop())
print(doubledStack.pop())

func myMap<T, U>(_ items: [T], _ f: (T) -> (U)) -> [U] {
    var result = [U]()
    for item in items {
        result.append(f(item))
    }
    return result
}

let strings = ["one", "two", "three"]
let stringLengths = myMap(strings) { $0.characters.count }
// T: String, U: Int
print(stringLengths)
