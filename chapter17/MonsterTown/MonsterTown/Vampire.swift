//
//  Vampire.swift
//  MonsterTown
//
//  Created by Yoon on 2017. 11. 25..
//  Copyright © 2017년 Yoon. All rights reserved.
//

import Foundation

class Vampire: Monster {
    override var name: String {
        get {return "Vampire"}
        set {}
    }
    var vampires = Array<Vampire>()
//    var vampires1: [Vampire]?
    
    override func terrorizeTown() {
        guard let population = town?.population, population < 1 else {
            vampires.append(Vampire())
            print("Generated Vampire count : \(vampires.count)")
            town?.changePopulation(by: -1)
            super.terrorizeTown()
            town?.printDescription()
            return
        }
    }
}
