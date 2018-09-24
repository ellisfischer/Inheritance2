//
//  Hero.swift
//  PA3_2
//
//  Created by Michael Fischer on 9/23/18.
//  Copyright © 2018 Ellis Fischer. All rights reserved.
//

import Foundation

class Hero: DungeonCharacter {
    var blockChance: Double
    var numberOfTurns: Int = -1
    
    init(Hit: Int, Speed: Int, lDamage: Int, hDamage: Int, Chance: Double, Blocks:Double) {
        self.blockChance = Blocks 
        super.init(Name: "", Hit: Hit, Speed: Speed, lDamage: lDamage, hDamage: hDamage, Chance: Chance)
        getSetName()
    }
    
    func getSetName(){
        print("Hello Hero, What is your name? ")
        let herosName = readLine() ?? "the Hero"
        self.name = herosName
        
    }
}
