//: Playground - noun: a place where people can play

import Cocoa

// optional type
var errorCodeString: String?
print("errorString : \(errorCodeString)")
errorCodeString = "404"
print("errorString : \(errorCodeString)")

if errorCodeString != nil {
    let theError1 = errorCodeString
    print("theError1 : \(theError1)")
    let theError2 = errorCodeString!
    print("theError2 : \(theError2)")
}

// optional binding
if let theError = errorCodeString {
    print("theError : \(theError)")
    if let errorCodeInteger = Int(theError) {
        print("\(theError): \(errorCodeInteger)")
    }
}

if let theError = errorCodeString {
    if let errorCodeInteger = Int(theError) {
        print("\(theError): \(errorCodeInteger)")
    }
}

if let theError = errorCodeString, let errorCodeInteger = Int(theError) {
    print("\(theError): \(errorCodeInteger)")
}
