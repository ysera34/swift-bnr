//
//  main.swift
//  MonsterTown
//
//  Created by Yoon on 2017. 11. 25..
//  Copyright © 2017년 Yoon. All rights reserved.
//

import Foundation

var myTown = Town(region: "West", population: 10_000, stoplights: 6)
myTown.printDescription()
var myTown1 = Town(population: 10_000, stoplights: 6)
myTown1.printDescription()


let fredTheZombie = Zombie()
fredTheZombie.town = myTown
fredTheZombie.terrorizeTown()
fredTheZombie.terrorizeTown()
fredTheZombie.town?.printDescription()

let myTownSize = myTown.townSize
print(myTownSize)
myTown.changePopulation(by: 1_000_000)
print("Size: \(myTown.townSize); population: \(myTown.population)")

let myTownSize1 = myTown.townSize1
print(myTownSize1)
myTown.changePopulation(by: 1_000_000)
print("Size: \(myTown.townSize1); population: \(myTown.population)")

print("Victim pool : \(fredTheZombie.victimPool)")
fredTheZombie.victimPool = 500
print("Victim pool : \(fredTheZombie.victimPool); population : \(fredTheZombie.town?.population)")

print(Monster.spookyNoise)
print(Zombie.spookyNoise)
if Zombie.isTerrifying {
    print("Run away!")
}
if GiantZombie.isTerrifying {
    print("GiantZombie Generated. Run away!")
}
