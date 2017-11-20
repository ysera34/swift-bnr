//
//  Town.swift
//  MonsterTown
//
//  Created by Yoon on 2017. 11. 21..
//  Copyright © 2017년 Yoon. All rights reserved.
//

import Foundation

struct Town {
    var population = 5_422
    var numberOfStoplights = 4
    
    func printDescription() {
        print("Population: \(myTown.population); number of stoplights: \(myTown.numberOfStoplights)")
    }
    
    mutating func changePopulation(by amount: Int) {
        population += amount
    }
}
