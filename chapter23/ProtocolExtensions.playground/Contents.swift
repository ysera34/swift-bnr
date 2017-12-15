//: Playground - noun: a place where people can play

import Cocoa

protocol Exercise: CustomStringConvertible {
    var name: String { get }
    var caloriesBurned: Double { get }
    var minutes: Double { get }
}

extension Exercise {
    var description: String {
        return "Exercise(\(name), burned \(caloriesBurned) calories in \(minutes) minutes"
    }
}

struct EllipticalWorkout: Exercise {
    let name = "Elliptical Workout"
    let caloriesBurned: Double
    let minutes: Double
}

struct TreadmillWorkout: Exercise {
    let name = "Treadmill Workout"
    let caloriesBurned: Double
    let minutes: Double
    let laps: Double
}

extension TreadmillWorkout {
    var description: String {
        return "TreadmillWorkout(\(caloriesBurned) calories and \(laps) laps in \(minutes) minutes"
    }
}

let ellipticalWorkout = EllipticalWorkout(caloriesBurned: 335, minutes: 30)
let treadmillWorkout = TreadmillWorkout(caloriesBurned: 350, minutes: 25, laps: 10.5)

func caloriesBurnedPerMinute<E: Exercise>(for exercise: E) -> Double {
    return exercise.caloriesBurned / exercise.minutes
}

print(caloriesBurnedPerMinute(for: ellipticalWorkout))
print(caloriesBurnedPerMinute(for: treadmillWorkout))

extension Exercise {
    var caloriesBurnedPerMinute: Double {
        return caloriesBurned / minutes
    }
}

print(ellipticalWorkout.caloriesBurnedPerMinute)
print(treadmillWorkout.caloriesBurnedPerMinute)


extension Sequence where Iterator.Element == Exercise {
    func totalCaloriesBurned() -> Double {
        var total: Double = 0
        for exercise in self {
            total += exercise.caloriesBurned
        }
        return total
    }
}

let mondayWorkout: [Exercise] = [ellipticalWorkout, treadmillWorkout]
print(mondayWorkout.totalCaloriesBurned())


print(ellipticalWorkout)
print(treadmillWorkout)
