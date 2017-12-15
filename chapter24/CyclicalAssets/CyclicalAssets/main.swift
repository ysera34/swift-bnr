//
//  main.swift
//  CyclicalAssets
//
//  Created by Yoon on 2017. 12. 15..
//  Copyright © 2017년 Yoon. All rights reserved.
//

import Foundation

var bob: Person? = Person(name: "Bob")
print("created \(bob)")

var laptop: Asset? = Asset(name: "Shiny Laptop", value: 1_500.0)
var hat: Asset? = Asset(name: "Cowboy Hat", value: 175.0)
var backpack: Asset? = Asset(name: "Blue Backpack", value: 45.0)

bob?.takeOwnership(of: laptop!)
bob?.takeOwnership(of: hat!)

bob = nil
print("the bob variable is now \(bob)")

laptop = nil
hat = nil
backpack = nil
