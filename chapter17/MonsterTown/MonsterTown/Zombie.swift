//
//  Zombie.swift
//  MonsterTown
//
//  Created by Yoon on 2017. 11. 25..
//  Copyright © 2017년 Yoon. All rights reserved.
//

import Foundation

class Zombie: Monster {
    var walksWithLimp: Bool
    private(set) var isFallingApart: Bool
    init(limp: Bool, fallingApart: Bool, town: Town?, monsterName: String) {
        walksWithLimp = limp
        isFallingApart = fallingApart
        super.init(town: town, monsterName: monsterName)
    }
    convenience init(limp: Bool, fallingApart: Bool) {
        self.init(limp: limp, fallingApart: fallingApart, town: nil, monsterName: "Fred")
        if walksWithLimp {
            print("The zombie has a bad knee.")
        }
    }

    override class var spookyNoise: String {
        return "Brains..."
    }
    
    class func makeSpookyNoise() -> String {
        return "Brains..."
    }
    
    override func terrorizeTown() {
//        if let population = town?.population, population > 10 {
//            town?.changePopulation(by: -10)
//            super.terrorizeTown()
//        } else {
//            print("The population in the village is very small.")
//        }
        
        guard let population = town?.population, population < 10 else {
            town?.changePopulation(by: -10)
            super.terrorizeTown()
            return
        }
    }
}
