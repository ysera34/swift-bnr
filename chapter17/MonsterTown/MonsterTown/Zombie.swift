//
//  Zombie.swift
//  MonsterTown
//
//  Created by Yoon on 2017. 11. 25..
//  Copyright © 2017년 Yoon. All rights reserved.
//

import Foundation

class Zombie: Monster {
    var walksWithLimp = true
//    do not work
//    var name = "Zombie"
//    override var name: String {
//        get {
//            return "Zombie"
//        }
//        set {
//            
//        }
//    }
    
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
    
    private(set) var isFallingApart = false
}
