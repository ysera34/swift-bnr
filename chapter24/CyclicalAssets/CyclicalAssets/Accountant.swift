//
//  Accountant.swift
//  CyclicalAssets
//
//  Created by Yoon on 2017. 12. 16..
//  Copyright © 2017년 Yoon. All rights reserved.
//

import Foundation

class Accountant {
    typealias NetWorthChanged = (Double) -> Void
    
    var netWorthChangedHandler: NetWorthChanged? = nil
    var netWorth: Double = 0.0 {
        didSet {
            netWorthChangedHandler?(netWorth)
        }
    }
    
    func gained(_ asset: Asset, completion: () -> Void) {
        netWorth += asset.value
        completion()
    }
    
    func lost(_ asset: Asset, completion: () -> Void) {
        netWorth -= asset.value
        completion()
    }
}
