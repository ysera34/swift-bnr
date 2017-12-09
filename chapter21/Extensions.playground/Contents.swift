//: Playground - noun: a place where people can play

import Cocoa

typealias Velocity = Double
extension Velocity {
    var kph: Velocity { return self * 1.60934 }
    var mph: Velocity { return self }
}
protocol Vehicle {
    var topSpeed: Velocity { get }
    var numberOfDoors: Int { get }
    var hasFlatbed: Bool { get }
}
struct Car {
    let make: String
    let model: String
    let year: Int
    let color: String
    let nickname: String
    var gasLevel: Double {
        willSet {
            precondition(newValue <= 1.0 && newValue >= 0.0, "New value must be between 0 and 1.")
        }
    }
}
extension Car: Vehicle {
    var topSpeed: Velocity { return 180 }
    var numberOfDoors: Int { return 4 }
    var hasFlatbed: Bool { return false }
}
extension Car {
    init(make: String, model: String, year: Int) {
        self.init(make: make,
                  model: model,
                  year: year,
                  color: "Black",
                  nickname: "N/A",
                  gasLevel: 1.0)
    }
}
var car = Car(make: "Ford", model: "Fusion", year: 2013)
