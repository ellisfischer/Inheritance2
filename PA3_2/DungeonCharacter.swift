//
//  DungeonCharacter.swift
//  PA3_2
//
//  Created by Michael Fischer on 9/23/18.
//  Copyright © 2018 Ellis Fischer. All rights reserved.
//

import Foundation

class DungeonCharacter{
    var name: String
    var hitPoints: Int
    var attackSpeed: Int
    var damageRange: [Int]
    var chance: Double
    
    init(Name: String, Hit: Int, Speed:Int, lDamage: Int, hDamage:Int, Chance:Double){
        self.name = Name
        self.hitPoints = Hit
        self.attackSpeed = Speed
        self.damageRange = [lDamage,hDamage]
        self.chance = Chance
    }
    
    func attack()->Int{
        let bigChance = UInt32(chance * 100)
        let canHit = arc4random_uniform(100) + 1
        if(bigChance > canHit){
            let damRan = UInt32(self.damageRange[1] - self.damageRange[0])
            let hitVal = Int(arc4random_uniform(damRan))
            let totalD = self.damageRange[0] + hitVal
            print("The attack worked and did \(totalD) damage")
            return totalD
        }
        else{
            print("The Attack Failed")
            return 0
        }
    }
}
