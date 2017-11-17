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
