//: Playground - noun: a place where people can play

import Cocoa

var dict1: Dictionary<String, Double> = [:]
var dict2 = Dictionary<String, Double>()
var dict3: [String:Double] = [:]
var dict4 = [String:Double]()

var movieRatings = [
    "Donnie Darko": 4,
    "Chungking Express": 5,
    "Dark City": 4
]

// get value
print("I have rated \(movieRatings.count) movies")
let donnieRating = movieRatings["Donnie"]        // nil
let darkoRating = movieRatings["Donnie Darko"]   // 4
let cityRating: Int? = movieRatings["Dark City"] // 4

// update value
movieRatings["Dark City"] = 5
let oldRating: Int? = movieRatings.updateValue(5, forKey: "Donnie Darko")
if let lastRating = oldRating, let currentRating = movieRatings["Donnie Darko"] {
    print("old rating: \(lastRating); current rating: \(currentRating)")
}

// add value
movieRatings["The Cabinet of Dr. Caligari"] = 5

// remove value
//movieRatings.removeValue(forKey: "Dark City")
//let removedRating: Int? = movieRatings.removeValue(forKey: "Dark City")
movieRatings["Dark City"] = nil // cannot return optional
