//
//  Zombie.swift
//  MonsterTown
//
//  Created by Yoon on 2017. 11. 23..
//  Copyright © 2017년 Yoon. All rights reserved.
//

import Foundation

class Zombie: Monster {
    var walksWithLimp = true
    
    override func terrorizeTown() {
        town?.changePopulation(by: -10)
        super.terrorizeTown()
    }
}
