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

bob?.useNetWorthChangeHandler {
    netWorth in
    print("Bob's net worth in now \(netWorth)")
}
bob?.takeOwnership(of: laptop!)
bob?.takeOwnership(of: hat!)
bob?.removeOwnerShip(of: hat!)

var paul: Person? = Person(name: "Paul")
print("created \(paul)")

paul?.takeOwnership(of: laptop!)

print("While Bob is alive, hat's owner is \(hat!.owner)")
bob = nil
print("the bob variable is now \(bob)")
print("After Bob is deallocated, hat's owner is \(hat!.owner)")

laptop = nil
hat = nil
backpack = nil
