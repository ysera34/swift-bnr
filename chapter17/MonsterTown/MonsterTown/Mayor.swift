//
//  Mayor.swift
//  MonsterTown
//
//  Created by Yoon on 2017. 11. 25..
//  Copyright © 2017년 Yoon. All rights reserved.
//

import Foundation

struct Mayor {
    
    private var anxietyLevel = 0
    
    mutating func notifiedTerrorizeTown() {
        self.anxietyLevel += 1
        print("Mayor anxietyLevel is \(anxietyLevel)")
    }
    
    func makeSpeech() {
        print("I'm deeply saddened to hear about this latest tragedy.")
        print("I promise that my office is looking into the nature of this rash of violence.")
    }
}
