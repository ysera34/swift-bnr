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
    var name: String?
    var victimPool: Int {
        get {
            return town?.population ?? 0
        }
        set(newVictimPool) {
            town?.population = newVictimPool
        }
    }
    required init?(town: Town?, monsterName: String) {
        if monsterName.isEmpty {
            return nil
        }
        self.town = town
        name = monsterName
    }
    
    class var spookyNoise: String {
        return "Grrr..."
    }
    
    func terrorizeTown() {
        if town != nil, let name = name {
            print("\(name) is terrorizing a town!")
        } else {
            print("There is no town or there is no zombie name.")
        }
    }
}
