//
//  GameCharecter.swift
//  pokemonBattleApp
//
//  Created by Nantachai Sangadsri on 23/9/2566 BE.
//

import Foundation

class GameCharecter {
    
    var cName: String
    var cHealth: Double = 100.0
    var cDemage: Double = 10.0
    
    init (name: String) {
        self.cName = name
    }
    
    func attack(target: GameCharecter) {
        target.cHealth = target.cHealth - self.cDemage
    }
}

class Hero: GameCharecter {
    override func attack (target: GameCharecter) {
        
        let luckkyNumber = arc4random_uniform(10)
        
        if luckkyNumber > 8 {
            target.cHealth = target.cHealth - (self.cDemage * 1.5)
        } else {
            target.cHealth = target.cHealth - self.cDemage
        }
    }
}

class Monster: GameCharecter {
    func heal() {
        self.cHealth = self.cHealth * 1.2
    }
    
    override func attack(target: GameCharecter) {
        let luckyNumber = arc4random_uniform(10)
        if luckyNumber > 8 {
            self.heal ()
        }
        super.attack(target: target)
    }
}
