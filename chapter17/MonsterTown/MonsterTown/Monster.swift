//
//  Monster.swift
//  MonsterTown
//
//  Created by Yoon on 2017. 11. 25..
//  Copyright © 2017년 Yoon. All rights reserved.
//

import Foundation

class Monster {
    static let isTerrifying = true
    var town: Town?
    var name = "Monster"
    var victimPool: Int {
        get {
            return town?.population ?? 0
        }
        set(newVictimPool) {
            town?.population = newVictimPool
        }
    }
    
    class var spookyNoise: String {
        return "Grrr..."
    }
    
    func terrorizeTown() {
        if town != nil {
            print("\(name) is terrorizing a town!")
            town?.major.notifiedTerrorizeTown()
        } else {
            print("\(name) hasn't found a town to terrorize yet...")
        }
    }
    
    func terrorizeTown1() {
        if town != nil {
            print("\(name) is terrorizing a town!")
        } else {
            print("\(name) hasn't found a town to terrorize yet...")
        }
    }
}
