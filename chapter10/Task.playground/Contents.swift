//: Playground - noun: a place where people can play

import Cocoa

var stateZipCodes: Dictionary<String, Array<Int>> = [:]

var californiaZipCodes: Array<Int> = [20306, 20307, 20308, 20309, 20310]
var georgiaZipCodes: Array<Int> = [30306, 30307, 30308, 30309, 30310]

stateZipCodes["California"] = californiaZipCodes
stateZipCodes["Georgia"] = georgiaZipCodes

stateZipCodes

for (stateName, zipCodes) in stateZipCodes {
    print("\(stateName) has the folling zip codes: \(zipCodes)")
}
