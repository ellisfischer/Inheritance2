//
//  Theif.swift
//  PA3_2
//
//  Created by Michael Fischer on 9/23/18.
//  Copyright © 2018 Ellis Fischer. All rights reserved.
//

import Foundation
class Theif: Hero {
    init() {
        super.init(Hit: 75, Speed: 6, lDamage: 20, hDamage: 40, Chance: 0.8, Blocks: 0.4)
    }
    
    func supriseAttack() -> Int{
        
        let canHit = arc4random_uniform(100) + 1
        if(40 >= canHit){
            print("The Suprise Attack took the enemy off Gaurd")
            self.numberOfTurns += 1
            let firstAttack = attack()
            return firstAttack
        }
        else if(40 < canHit && canHit < 60){
            print("The Suprise Attack Failed")
            return 0
        }
        else{
            return attack()
        }
    }
}
