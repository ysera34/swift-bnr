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


// A function that acts as a return type.
func makeTownGuand() -> (Int, Int) -> Int {
    func buildRoads(byAddingLights lights: Int, toExistingLights existingLights: Int) -> Int {
        return lights + existingLights
    }
    return buildRoads
}
var stoplights = 4
let townPlanByAddingLightsToExistingLights = makeTownGuand()
stoplights = townPlanByAddingLightsToExistingLights(4, stoplights)
print("Knowhere has \(stoplights) stoplights.")


// A function that acts as a argument type.
func makeTownGuand1(withBudget budget: Int, condition: (Int) -> Bool) -> ((Int, Int) -> Int)? {
    if condition(budget) {
        func buildRoads(byAddingLights lights: Int, toExistingLights existingLights: Int) -> Int {
            return lights + existingLights
        }
        return buildRoads
    } else {
        return nil
    }
}
func evaluate(budget: Int) -> Bool {
    return budget > 10_000
}
if let townPlanByAddingLightsToExistingLights = makeTownGuand1(withBudget: 1_000, condition: evaluate) {
    stoplights = townPlanByAddingLightsToExistingLights(4, stoplights)
}
if let newTownPlanByAddingLightsToExistingLights = makeTownGuand1(withBudget: 10_500, condition: evaluate) {
    stoplights = newTownPlanByAddingLightsToExistingLights(4, stoplights)
}
print("Knowhere has \(stoplights) stoplights.")


// Closure, Grab the value.
func makePopulationTracker(forInitialPopulation population: Int) -> (Int) -> (Int) {
    var totalPopulation = population
    func populationTracker(growth: Int) -> Int {
        totalPopulation += growth
        return totalPopulation
    }
    return populationTracker
}

var currentPopulation = 5_422
let growBy = makePopulationTracker(forInitialPopulation: currentPopulation)
growBy
growBy(500)
growBy(500)
growBy(500)
currentPopulation = growBy(500)


// Closure is reference type
let anotherGrowBy = growBy
anotherGrowBy(500)

var bigCityPopulation = 4_061_981
let bigCityGrowBy = makePopulationTracker(forInitialPopulation: bigCityPopulation)
bigCityPopulation = bigCityGrowBy(10_000)
currentPopulation


// functional programming
// map(_:)
let precinctPopulations = [1244, 2021, 2157]
let projectedPopulations = precinctPopulations.map {
    (population: Int) -> Int in
    return population * 2
}
projectedPopulations

// filter(_:)
let bigProjections = projectedPopulations.filter {
    (projection: Int) -> Bool in
    return projection > 4000
}
bigProjections

// reduce(_:_:)
let totalProjection = projectedPopulations.reduce(0) {
    (accumulatedProjection: Int, precinctProjection: Int) -> Int in
    return accumulatedProjection + precinctProjection
}
totalProjection
