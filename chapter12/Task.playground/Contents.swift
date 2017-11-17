//: Playground - noun: a place where people can play

import Cocoa

func greetByMiddleName(fromFullName name: (first: String, middle: String?, last: String)) {
    guard let middleName = name.middle, middleName.count < 4 else {
        print("Hey there!")
        return
    }
    print("Hey \(middleName)")
}
greetByMiddleName(fromFullName: (first: "Matt", middle: "Danger", last: "Mathias"))
greetByMiddleName(fromFullName: (first: "Matt", middle: "Alex", last: "Mathias"))
greetByMiddleName(fromFullName: (first: "Matt", middle: "Pat", last: "Mathias"))
greetByMiddleName(fromFullName: ("Matt", nil, "Mathias"))


func siftBeans(fromGroceryList: [String]) -> (beans: [String], otherGroceries: [String]) {
    let suffixBeans = "beans"
    var beans = [String]()
    var otherGroceries = [String]()
    for item in fromGroceryList {
        if item.hasSuffix(suffixBeans) {
            beans.append(item)
        } else {
            otherGroceries.append(item)
        }
    }
    return (beans, otherGroceries)
}
let result = siftBeans(fromGroceryList: ["green beans", "milk", "black beans", "pinto beans", "apples"])
result.beans == ["green beans", "black beans", "pinto beans"]
result.otherGroceries == ["milk", "apples"]


func printGreeting() {
    print("Hello, playground")
}
func printGreeting1() -> Void {
    print("Hello, playground")
}
func printGreeting2() -> () {
    print("Hello, playground")
}
