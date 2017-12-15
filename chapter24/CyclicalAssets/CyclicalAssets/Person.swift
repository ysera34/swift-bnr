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
    var assets = [Asset]()
    
    var description: String {
        return "Person(\(name))"
    }
    
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("\(self) is being deallocated")
    }
    
    func takeOwnership(of asset: Asset) {
        asset.owner = self
        assets.append(asset)
    }
}
