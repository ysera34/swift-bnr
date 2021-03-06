//: Playground - noun: a place where people can play

import Cocoa

struct StackIterator<T>: IteratorProtocol {
//    typealias Element = T
    
    var stack: Stack<T>
    
//    mutating func next() -> Element? {
    mutating func next() -> T? {
        return stack.pop()
    }
}

//struct Stack {
struct Stack<Element>: Sequence {
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
    
    func makeIterator() -> StackIterator<Element> {
        return StackIterator(stack: self)
    }
    
//    mutating func pushAll(_ array: [Element]) {
    mutating func pushAll<S: Sequence>(_ sequence: S) where S.Iterator.Element == Element {
//        for item in array {
        for item in sequence {
            self.push(item)
        }
    }
    
    func filter(_ f: (Element) -> Bool) -> Stack<Element> {
        var filteredItems = Stack<Element>()
        for item in items {
            if f(item) == true {
                filteredItems.push(item)
            }
        }
        return filteredItems
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


func checkIfEqual<T: Equatable>(_ first: T, _ second: T) -> Bool {
    return first == second
}

print(checkIfEqual(1, 1))
print(checkIfEqual("a string", "a string"))
print(checkIfEqual("a string", "a different string"))
//print(checkIfEqual(1, "1"))

func checkIfDescriptionsMatch<T: CustomStringConvertible, U: CustomStringConvertible>(_ first: T, _ second: U) -> Bool {
    return first.description == second.description
}

print(checkIfDescriptionsMatch(Int(1), Int(1)))
print(checkIfDescriptionsMatch(1, 1.0))
print(checkIfDescriptionsMatch(Float(1), Double(1)))


var myStack = Stack<Int>()
myStack.push(10)
myStack.push(20)
myStack.push(30)

var myStackIterator = StackIterator(stack: myStack)
while let value = myStackIterator.next() {
    print("got \(value)")
}

for value in myStack {
    print("for-in loop: got \(value)")
}

myStack.pushAll([1, 2, 3])
for value in myStack {
    print("after pushing: got \(value)")
}

var myOtherStack = Stack<Int>()
myOtherStack.pushAll([1, 2, 3])
myStack.pushAll(myOtherStack)
for value in myStack {
    print("after pushing items onto stack, got \(value)")
}

var filteredStack = myStack.filter{$0 == 1}
for value in filteredStack {
    print("filtered stack value: \(value)")
}

func findAll<T: Equatable>(_ array: [T], _ elementToFind: T) -> [Int] {
    var positions = [Int]()
    for (index, item) in array.enumerated() {
        if item == elementToFind {
            positions.append(index)
        }
    }
    return positions
}

findAll([5, 3, 7, 3, 9], 3)
findAll(["hey", "what", "thats", "what", "hey"], "hey")

func findAll<T: Equatable, C: Collection>(_ elements: C, compare: T) -> [C.Index]? where C.Iterator.Element == T {
    var resultArray = Array<C.Index>()
    var index = elements.startIndex
    
    for element in elements {
        if element == compare {
            resultArray.append(index)
        }
        index = elements.index(after: index)
    }
    return resultArray
}

findAll(["hey", "what", "thats", "what", "hey"], compare: "hey")
