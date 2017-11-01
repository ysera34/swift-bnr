//: Playground - noun: a place where people can play

import Cocoa

var statusCode: Int = 404;

//var errorString: String
var errorString: String = "The request failed with the error."
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
//case 400, 401, 403, 404:
//    errorString = "There was something wrong with the request."
//    fallthrough
//default:
//    errorString += "Please review the request and try again."
    
    case 101, 101:
        errorString += " Informational, 1xx."
    
    case 204:
        errorString += " Successful but no content, 204."
    
    case 300...307:
        errorString += " Redirection, 3xx."
    
    case 400...417:
        errorString += " Client error, 4xx"
    
    case 500...505:
        errorString += " Server error, 5xx"
    
    default:
        errorString += "Unknown. Please review the request and try again."
}
print(errorString)
