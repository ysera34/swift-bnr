//: Playground - noun: a place where people can play

import Cocoa

//var statusCode: Int = 404
//var statusCode: Int = 203
var statusCode: Int = 418

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
//        errorString += " Informational, 1xx."
        errorString += " Informational, \(statusCode)."
    
    case 204:
//        errorString += " Successful but no content, 204."
        errorString += " Successful but no content, 204."
    
    case 300...307:
//        errorString += " Redirection, 3xx."
        errorString += " Redirection, \(statusCode)."
    
    case 400...417:
//        errorString += " Client error, 4xx."
        errorString += " Client error, \(statusCode)."
    
    case 500...505:
//        errorString += " Server error, 5xx."
        errorString += " Server error, \(statusCode)."
    
    case let unknownCode where (unknownCode >= 200 && unknownCode < 300) || unknownCode > 505:
        errorString = "\(unknownCode) is not a known error code."
    
    default:
//        errorString += "Unknown. Please review the request and try again."
        errorString += "\(statusCode) is not a known error code."
    
}
print(errorString)

let error = (statusCode, errorString)
error.0
error.1
let error2 = (code: statusCode, error: errorString)
error2.code
error2.error


let firstErrorCode = 404
let secondErrorCode = 200
let errorCodes = (firstErrorCode, secondErrorCode)
switch errorCodes {
    case (404, 404):
        print("No items found.")
    case (404, _):
        print("First item not found.")
    case (_, 404):
        print("Second item not found.")
    default:
        print("All items found.")
}
