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

extension Point: Comparable {
    static func <(lhs: Point, rhs: Point) -> Bool {
//        return (lhs.x < rhs.x) && (lhs.y < rhs.y)
        return sqrt(Double((lhs.x * lhs.x) + (lhs.y * lhs.y))) < sqrt(Double(rhs.x * rhs.x + rhs.y * rhs.y))
    }
    
    static func +(lhs: Point, rhs: Point) -> Point {
        return Point(x: lhs.x + rhs.x, y: lhs.y + rhs.y)
    }
}

let a = Point(x: 3, y: 4)
let b = Point(x: 3, y: 4)

// Before conforming Equatable Protocol, Binary operator '==' cannot be applied to two 'Point' operands
let abEqual = (a == b)
let abNotEqual = (a != b)

let c = Point(x: 2, y: 6)
let d = Point(x: 3, y: 7)

let cdEqual = (c == d)
let cLessThanD = (c < d)

let cLessThanEqualD = (c <= d)
let cGreaterThanD = (c > d)
let cGreaterThanEqualD = (c >= d)

let cAddD = (c + d)
