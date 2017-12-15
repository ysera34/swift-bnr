//: Playground - noun: a place where people can play

import Cocoa

protocol Exercise {
    var name: String { get }
    var caloriesBurned: Double { get }
    var minutes: Double { get }
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
