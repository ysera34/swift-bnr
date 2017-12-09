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
    let numberOfDoors: Int
    var gasLevel: Double {
        willSet {
            precondition(newValue <= 1.0 && newValue >= 0.0, "New value must be between 0 and 1.")
        }
    }
}
extension Car: Vehicle {
    var topSpeed: Velocity { return 180 }
//    var numberOfDoors: Int { return 4 }
    var hasFlatbed: Bool { return false }
}
extension Car {
    init(make: String, model: String, year: Int, numberOfDoors: Int) {
        precondition(numberOfDoors == 4 || numberOfDoors == 2, "You can only have a car with 2 or 4 doors in this example")
        self.init(make: make,
                  model: model,
                  year: year,
                  color: "Black",
                  nickname: "N/A",
                  numberOfDoors: numberOfDoors,
                  gasLevel: 1.0)
    }
}
var car = Car(make: "Ford", model: "Fusion", year: 2013, numberOfDoors: 2)

extension Car {
    enum Kind {
        case coupe, sedan
    }
    var kind: Kind {
        if numberOfDoors == 2 {
            return .coupe
        } else {
            return .sedan
        }
    }
}
car.kind

extension Car {
    mutating func emptyGas(by amount: Double) {
        precondition(amount <= 1 && amount > 0, "Amount to remove must be between 0 and 1")
        precondition(amount < gasLevel, "Amount to remove is larger than the amount of gas left")
        gasLevel -= amount
    }
    mutating func fillGas() {
        gasLevel = 1.0
    }
}
car.emptyGas(by: 0.3)
car.gasLevel
car.fillGas()
car.gasLevel
