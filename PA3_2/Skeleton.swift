//
//  Skeleton.swift
//  PA3_2
//
//  Created by Michael Fischer on 9/23/18.
//  Copyright © 2018 Ellis Fischer. All rights reserved.
//

import Foundation

class Skeleton: Monster {
    
    init(){
        super.init(Name: "Skeleton", Hit: 100, Speed: 3, lDamage: 30, hDamage: 50, Chance: 0.8, healChance: 0.3, lHeal: 30, hHeal: 50)
    }
}
