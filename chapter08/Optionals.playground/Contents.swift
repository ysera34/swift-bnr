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

// implicitly unwrapped optional
var errorCodeString1: String!
print("errorCodeString1 : \(errorCodeString1)")
errorCodeString1 = "404"
print("errorCodeString1 : \(errorCodeString1)")

var errorCodeString2: String! = nil
//let anotherErrorCodeString: String = errorCodeString2
let yetAnotherErrorCodeString = errorCodeString2
print("yetAnotherErrorCodeString : \(yetAnotherErrorCodeString)")

// optional chaining
var errorCodeString3: String?
errorCodeString3 = "404"
var errorDescription: String?
if let theError = errorCodeString3, let errorCodeInteger = Int(theError),
    errorCodeInteger == 404 {
    errorDescription = "\(errorCodeInteger + 200) : resource was not found."
}

var upCaseErrorDescription = errorDescription?.uppercased()
errorDescription
