//
//  Person.swift
//  CyclicalAssets
//
//  Created by Yoon on 2017. 12. 15..
//  Copyright © 2017년 Yoon. All rights reserved.
//

import Foundation

class Person: CustomStringConvertible {
    let name: String
    let accountant = Accountant()
    var assets = [Asset]()
    
    var description: String {
        return "Person(\(name))"
    }
    
    init(name: String) {
        self.name = name
        accountant.netWorthChangedHandler = {
//            netWorth in
//            self.netWorthDidChange(to: netWorth)
            [weak self] netWorth in
            self?.netWorthDidChange(to: netWorth)
            return
        }
    }
    
    deinit {
        print("\(self) is being deallocated")
    }
    
    func takeOwnership(of asset: Asset) {
//        asset.owner = self
//        assets.append(asset)
        accountant.gained(asset) {
            asset.owner = self
            assets.append(asset)
        }
    }
    
    func netWorthDidChange(to netWorth: Double) {
        print("The net worth of \(self) is now \(netWorth)")
    }
    
    func useNetWorthChangeHandler(handler: @escaping (Double) -> Void) {
        accountant.netWorthChangedHandler = handler
    }
}
