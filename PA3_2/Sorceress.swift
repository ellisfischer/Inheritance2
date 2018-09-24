//
//  Sorceress.swift
//  PA3_2
//
//  Created by Michael Fischer on 9/23/18.
//  Copyright © 2018 Ellis Fischer. All rights reserved.
//

import Foundation

class Sorceress: Hero {
    
    init() {
        super.init(Hit: 75, Speed: 6, lDamage: 20, hDamage: 40, Chance: 0.8, Blocks: 0.4)
    }
    
    func heal(){
        let canHit = arc4random_uniform(100) + 1
        if(40 >= canHit){
            let regen = Int(arc4random_uniform(25) + 1)
            var healed = regen + 25
            self.hitPoints += healed
            print("you Healed \(healed) hit points")
        }
        else{
            print("The Heal Failed")
            
        }
    }
}
