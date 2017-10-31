//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

print("The maximum Int value is \(Int.max).")
print("The minimum Int value is \(Int.min).")
print("The maximum value for a 8-bit integer is \(Int8.max).")
print("The minimum value for a 8-bit integer is \(Int8.min).")
print("The maximum value for a 16-bit integer is \(Int16.max).")
print("The minimum value for a 16-bit integer is \(Int16.min).")
print("The maximum value for a 32-bit integer is \(Int32.max).")
print("The minimum value for a 32-bit integer is \(Int32.min).")
print("The maximum value for a 64-bit integer is \(Int64.max).")
print("The minimum value for a 64-bit integer is \(Int64.min).")

print("The maximum Int value is \(UInt.max).")
print("The minimum Int value is \(UInt.min).")
print("The maximum value for a 8-bit unsigned integer is \(UInt8.max).")
print("The minimum value for a 8-bit unsigned integer is \(UInt8.min).")
print("The maximum value for a 16-bit unsigned integer is \(UInt16.max).")
print("The minimum value for a 16-bit unsigned integer is \(UInt16.min).")
print("The maximum value for a 32-bit unsigned integer is \(UInt32.max).")
print("The minimum value for a 32-bit unsigned integer is \(UInt32.min).")
print("The maximum value for a 64-bit unsigned integer is \(UInt64.max).")
print("The minimum value for a 64-bit unsigned integer is \(UInt64.min).")

/*
The maximum Int value is 9223372036854775807.
The minimum Int value is -9223372036854775808.
The maximum value for a 8-bit integer is 127.
The minimum value for a 8-bit integer is -128.
The maximum value for a 16-bit integer is 32767.
The minimum value for a 16-bit integer is -32768.
The maximum value for a 32-bit integer is 2147483647.
The minimum value for a 32-bit integer is -2147483648.
The maximum value for a 64-bit integer is 9223372036854775807.
The minimum value for a 64-bit integer is -9223372036854775808.
The maximum Int value is 18446744073709551615.
The minimum Int value is 0.
The maximum value for a 8-bit unsigned integer is 255.
The minimum value for a 8-bit unsigned integer is 0.
The maximum value for a 16-bit unsigned integer is 65535.
The minimum value for a 16-bit unsigned integer is 0.
The maximum value for a 32-bit unsigned integer is 4294967295.
The minimum value for a 32-bit unsigned integer is 0.
The maximum value for a 64-bit unsigned integer is 18446744073709551615.
The minimum value for a 64-bit unsigned integer is 0.
*/

let numberOfPeople: UInt = 40
let volumeAdjustment: Int32 = -1000

print(10 + 20)
print(30 - 5)
print(5 * 6)

print(10 + 2 * 5)
print(30 - 5 - 5)

print((10 + 2) * 5)
print(30 - (5 - 5))

print(11 / 3)
print(11 % 3)
print(-11 % 3)

var x = 10
x += 10  // x = x + 10
print("x has had 10 added to it and is now \(x)")
x -= 5   // x = x - 5
print("x has had 5 substracted from it and is now \(x)");

