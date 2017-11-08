//: Playground - noun: a place where people can play

import Cocoa

var errorCodeString: String?
errorCodeString = "404"
// print("errorString : \(errorCodeString)")
if errorCodeString != nil {
    let theError = errorCodeString!
    print("theError : \(theError)")
}


//if let temporaryConstant = anOptional {
    // temporaryContent do something
//} else {
    // anOptional is nil
//}

if let theError = errorCodeString {
//    print(theError)
    if let errorCodeInteger = Int(theError) {
        print("\(theError): \(errorCodeInteger)")
    }
}
