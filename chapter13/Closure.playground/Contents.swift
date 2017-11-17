//: Playground - noun: a place where people can play

import Cocoa

let volunteerCounts = [1,3,40,32,2,53,77,13]

func sortAscending(_ i: Int, _ j: Int) -> Bool {
    return i < j
}
let volunteersSorted = volunteerCounts.sorted(by: <)
let volunteersSorted1 = volunteerCounts.sorted(by: sortAscending)
let volenteersSorted2 = volunteerCounts.sorted(by: {
    (i: Int, j: Int) -> Bool in
    return i < j
})
volenteersSorted2
let volenteersSorted3 = volunteerCounts.sorted(by: {i, j in i < j})
volenteersSorted3
let volenteersSorted4 = volunteerCounts.sorted(by: {$0 < $1})
volenteersSorted4
let volenteersSorted5 = volunteerCounts.sorted{$0 < $1}
volenteersSorted5
