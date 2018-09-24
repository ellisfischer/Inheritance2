//
//  Monster.swift
//  PA3_2
//
//  Created by Michael Fischer on 9/23/18.
//  Copyright © 2018 Ellis Fischer. All rights reserved.
//

import Foundation

class Monster: DungeonCharacter {
    var chanceToHeal: Double
    var healRange: [Int]
    
    init(Name: String, Hit: Int, Speed: Int, lDamage: Int, hDamage: Int, Chance: Double,healChance:Double, lHeal:Int, hHeal:Int) {
        self.chanceToHeal = healChance
        self.healRange = [lHeal,hHeal]
        super.init(Name: Name, Hit: Hit, Speed: Speed, lDamage: lDamage, hDamage: hDamage, Chance: Chance)
    }
    
    func heal(){
        let canHit = arc4random_uniform(100) + 1
        let bigHealChance = Int(chanceToHeal * 100)
        if(bigHealChance >= canHit){
            let heal = UInt32(healRange[1] - healRange[0])
            let healthHealed = Int(arc4random_uniform(heal) + 1)
            let totalH = healthHealed + healRange[0]
            self.hitPoints += totalH
            print("The Monster healed \(totalH) hit points")
        }
        
    }
    
}
