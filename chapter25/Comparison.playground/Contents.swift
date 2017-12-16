//: Playground - noun: a place where people can play

import Cocoa

struct Point {
    let x: Int
    let y: Int
}

extension Point: Equatable {
    static func ==(lhs: Point, rhs: Point) -> Bool {
        return (lhs.x == rhs.x) && (lhs.y == rhs.y)
    }
}

let a = Point(x: 3, y: 4)
let b = Point(x: 3, y: 4)

// Before conforming Equatable Protocol, Binary operator '==' cannot be applied to two 'Point' operands
let abEqual = (a == b)
let abNotEqual = (a != b)
