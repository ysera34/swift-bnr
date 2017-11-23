//
//  main.swift
//  MonsterTown
//
//  Created by Yoon on 2017. 11. 21..
//  Copyright © 2017년 Yoon. All rights reserved.
//

import Foundation

var myTown = Town()
myTown.printDescription()
myTown.changePopulation(by: 500)
myTown.printDescription()

let genericMonster = Monster()
genericMonster.town = myTown
genericMonster.terrorizeTown()
