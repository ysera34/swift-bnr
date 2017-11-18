//: Playground - noun: a place where people can play

import Cocoa

enum ShapeDimensions {
    case point
    case square(side: Double)
    case rectangle(width: Double, height: Double)
    case rightTriangle(baseLine: Double, height: Double)
    
    func area() -> Double {
        switch self {
        case .point:
            return 0
        case let .square(side: side):
            return side * side
        case let .rectangle(width: w, height: h):
            return w * h
        case let .rightTriangle(baseLine: b, height: h):
            return b * h / 2
        }
        
    }
    
    func perimeter() -> Double {
        switch self {
        case .point:
            return 0
        case let .square(side: side):
            return side * 4
        case let .rectangle(width: w, height: h):
            return (2 * w) + (2 * h)
        case let .rightTriangle(baseLine: b, height: h):
            return (pow(b, 2) + pow(h, 2)).squareRoot()
        }
    }
}
var squareShape = ShapeDimensions.square(side: 10.0)
var rectangleShape = ShapeDimensions.rectangle(width: 5.0, height: 10.0)
var pointShape = ShapeDimensions.point
var rightTriangleShape = ShapeDimensions.rightTriangle(baseLine: 4.0, height: 3.0)

print("square's perimeter = \(squareShape.perimeter())")
print("rectangle's perimeter = \(rectangleShape.perimeter())")
print("point's perimeter = \(pointShape.perimeter())")
print("rightTriangle's perimeter = \(rightTriangleShape.perimeter())")
