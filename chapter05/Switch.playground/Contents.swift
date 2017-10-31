//: Playground - noun: a place where people can play

import Cocoa

var statusCode: Int = 404;

//var errorString: String
var errorString: String = "The request failed."
switch statusCode {
//case 400:
//    errorString = "Bad request"
//case 401:
//    errorString = "Unauthorized"
//case 403:
//    errorString = "Forbidden"
//case 404:
//    errorString = "Not found"
//default:
//    errorString = "None"
case 400, 401, 403, 404:
    errorString = "There was something wrong with the request."
    fallthrough
default:
    errorString += "Please review the request and try again."
}
print(errorString)
