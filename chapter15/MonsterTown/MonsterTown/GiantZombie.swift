//
//  GiantZombie.swift
//  MonsterTown
//
//  Created by Yoon on 2017. 11. 25..
//  Copyright © 2017년 Yoon. All rights reserved.
//

import Foundation

class GiantZombie: Zombie {
    override class func makeSpookyNoise() -> String {
        return "ROAR!"
    }
    
//    Cannot override static method
//    override class func makeSpookyNoise1() -> String {
//        return "ROAR!1"
//    }
    
//    Class method overrides a 'final' class method
//    override class func makeSpookyNoise2() -> String {
//        return "ROAR!2"
//    }
}
