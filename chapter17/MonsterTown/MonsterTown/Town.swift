//
//  Town.swift
//  MonsterTown
//
//  Created by Yoon on 2017. 11. 25..
//  Copyright © 2017년 Yoon. All rights reserved.
//

import Foundation

struct Town {
    static let region = "South"
    var population = 119 {
        willSet(newPopulation) {
            print("The population will change to \(newPopulation) from \(population)")
        }
        didSet(oldPopulation) {
            print("The population has changed to \(population) from \(oldPopulation)")
            if population < oldPopulation {
                major.makeSpeech()
            }
        }
    }
    var numberOfStoplights = 4
    var major = Mayor()
    
    enum Size {
        case small
        case medium
        case large
    }
    lazy var townSize: Size = {
        print("townSize lazy computing...")
        switch self.population {
        case 0...10_000:
            return Size.small
        case 10_001...100_000:
            return Size.medium
        default:
            return Size.large
        }
    }()
    var townSize1: Size {
        get {
            switch self.population {
            case 0...10_000:
                return Size.small
            case 10_001...100_000:
                return Size.medium
            default:
                return Size.large
            }
        }
    }
    
    static func numberOfTrees() -> Int {
        return 5
    }
    
    func printDescription() {
        print("Population: \(myTown.population); number of stoplights: \(myTown.numberOfStoplights)")
    }
    
    mutating func changePopulation(by amount: Int) {
        population += amount
    }
}
