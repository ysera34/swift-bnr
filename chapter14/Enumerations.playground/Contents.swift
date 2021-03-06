//: Playground - noun: a place where people can play

import Cocoa

enum TextAlignment {
    case left
    case right
    case center
}

var alignment: TextAlignment = TextAlignment.left
var alignment1 = TextAlignment.left
alignment1 = .right

if alignment1 == .right {
    print("We should right-align the text!")
}
switch alignment1 {
case .left:
    print("left aligned")
case .right:
    print("right aligned")
case .center:
    print("center aligned")
}


// raw value
enum TextAlignment1: Int {
    case left
    case right
    case center
}
var alignment2 = TextAlignment1.left
print("Left has raw value \(TextAlignment1.left.rawValue)")
print("Right has raw value \(TextAlignment1.right.rawValue)")
print("Center has raw value \(TextAlignment1.center.rawValue)")

enum TextAlignment2: Int {
    case left = 10
    case right = 20
    case center
}
var alignment3 = TextAlignment2.left
print("Left has raw value \(TextAlignment2.left.rawValue)")
print("Right has raw value \(TextAlignment2.right.rawValue)")
print("Center has raw value \(TextAlignment2.center.rawValue)")
print("Left has hash value \(TextAlignment2.left.hashValue)")
print("Right has hash value \(TextAlignment2.right.hashValue)")
print("Center has hash value \(TextAlignment2.center.hashValue)")
print("The alignment variable has raw value \(alignment3.rawValue)")

let myRawValue = 20
if let myAlignment = TextAlignment2(rawValue: myRawValue) {
    print("successfully converted \(myRawValue) into a TextAlignment")
} else {
    print("\(myRawValue) has no corresponding TextAlignment case")
}

enum ProgrammingLanguage: String {
    case swift //= "swift programming"
    case objectiveC //= "objective-c programming"
    case c = "c programming"
    case cpp = "c++ programming"
    case java = "java programming"
}

let myFavoriteLanguage = ProgrammingLanguage.swift
print("My favorite programming language is \(myFavoriteLanguage.rawValue)")
let myFavoriteLanguage1 = ProgrammingLanguage.java
print("My favorite programming language is \(myFavoriteLanguage1.rawValue)")


// method
enum Lightbulb {
    case on
    case off
    
    func surfaceTemperature(forAmbientTemperature ambient: Double) -> Double {
        switch self {
        case .on:
            return ambient + 150.0
        case .off:
            return ambient
        }
    }
    
    mutating func toggle() {
        switch self {
        case .on:
            self = .off
        case .off:
            self = .on
        }
    }
}

var bulb = Lightbulb.on
let ambientTemperature = 77.0
var bulbTemperature = bulb.surfaceTemperature(forAmbientTemperature: ambientTemperature)
print("the bulb's temperature is \(bulbTemperature)")
bulb.toggle()
bulbTemperature = bulb.surfaceTemperature(forAmbientTemperature: ambientTemperature)
print("the bulb's temperature is \(bulbTemperature)")


// Associate data with enumerated instance
enum ShapeDimensions {
    case point
    case square(side: Double)
    case rectangle(width: Double, height: Double)
    
    func area() -> Double {
        switch self {
        case .point:
            return 0
        case let .square(side: side):
            return side * side
        case let .rectangle(width: w, height: h):
            return w * h
        }
    }
}

var squareShape = ShapeDimensions.square(side: 10.0)
var rectangleShape = ShapeDimensions.rectangle(width: 5.0, height: 10.0)
var pointShape = ShapeDimensions.point

print("square's area = \(squareShape.area())")
print("rectangle's area = \(rectangleShape.area())")
print("point's area = \(pointShape.area())")


// Recursive
enum FamilyTree {
    case noKnowParents
    indirect case oneKnownParent(name: String, ancestors: FamilyTree)
    indirect case twoKnownParents(fatherName: String, fatherAncestors: FamilyTree,
                        motherName: String, motherAncestors: FamilyTree)
}
let fredAncestors = FamilyTree.twoKnownParents(
    fatherName: "Fred Sr.",
    fatherAncestors: .oneKnownParent(name: "Beth", ancestors: .noKnowParents),
    motherName: "Marsha", motherAncestors: .noKnowParents)
