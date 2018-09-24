//
//  main.swift
//  PA3_2
//
//  Created by Michael Fischer on 9/23/18.
//  Copyright © 2018 Ellis Fischer. All rights reserved.
//

import Foundation

print("Hello, World")

//test to work with attack
//func attack()->Int{
//    var chance = 0.8
//    var damageRange = [50,55]
//    let bigChance = UInt32(chance * 100)
//    let canHit = arc4random_uniform(100) + 1
//    if(bigChance > canHit){
//        let damRan = UInt32(damageRange[1] - damageRange[0])
//        let hitVal = Int(arc4random_uniform(damRan)+1)
//        return damageRange[0] + hitVal
//    }
//    else{
//        return 0
//    }
//}
//print(attack())

//checks to see if init ask user for name
//var hero: Hero = Hero(Hit: 2, Speed: 2, lDamage: 2, hDamage: 3, Chance: 0.8, Blocks: 0.4, Turns: 2)
//    print(hero.name)

//checks to see if init ask user for name and testing out special attacks
//var hero: Warrior = Warrior()
//    print(hero.name)
//print(hero.crushingBlow())
//
//var hero2: Sorceress = Sorceress()
//hero2.heal()
//print(hero2.hitPoints)
//
//var hero3: Theif = Theif()
//hero3.supriseAttack()

var monster: Monster = Monster(Name: "d", Hit: 5, Speed: 5, lDamage: 5, hDamage: 6, Chance: 0.8, healChance: 0.8, lHeal: 20, hHeal: 100)
monster.heal()








