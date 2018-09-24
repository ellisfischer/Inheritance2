//
//  Ogre.swift
//  PA3_2
//
//  Created by Michael Fischer on 9/23/18.
//  Copyright © 2018 Ellis Fischer. All rights reserved.
//

import Foundation

class Ogre: Monster {
    
    init(){
        super.init(Name: "Ogre", Hit: 200, Speed: 2, lDamage: 30, hDamage: 60, Chance: 0.6, healChance: 0.1, lHeal: 30, hHeal: 60)
    }
}
