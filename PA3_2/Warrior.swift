//
//  Warrior.swift
//  PA3_2
//
//  Created by Michael Fischer on 9/23/18.
//  Copyright © 2018 Ellis Fischer. All rights reserved.
//

import Foundation

class Warrior: Hero {
    
    init() {
        super.init(Hit: 25, Speed: 4, lDamage: 35, hDamage: 60, Chance: 0.8, Blocks: 0.2)
    }
    
    func crushingBlow() -> Int{
        
        let canHit = arc4random_uniform(100) + 1
        if(40 >= canHit){
            let strength = Int(arc4random_uniform(100) + 1)
            let totalD = strength + 75
            print("The Crushing Blow did \(totalD) Damage")
            return totalD
        }
        else{
            print("The Crushing Blow Failed")
            return 0
        }
    }
}
