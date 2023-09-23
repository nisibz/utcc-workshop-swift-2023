import UIKit

class GameCharector {
    
    var cName: String
    var cHealth: Double = 100.0
    var cDemage: Double = 10.0
    
    init (name: String) {
        self.cName = name
    }
    
    func attack(target: GameCharector) {
        target.cHealth = target.cHealth - self.cDemage
    }
}

class Hero: GameCharector {
    override func attack (target: GameCharector) {
        
        let luckkyNumber = arc4random_uniform(10)
        
        if luckkyNumber > 8 {
            target.cHealth = target.cHealth - (self.cDemage * 1.5)
        } else {
            target.cHealth = target.cHealth - self.cDemage
        }
    }
}

class Monster: GameCharector {
    func heal() {
        self.cHealth = self.cHealth * 1.2
    }
    
    override func attack(target: GameCharector) {
        let luckyNumber = arc4random_uniform(10)
        if luckyNumber > 8 {
            self.heal ()
        }
        super.attack(target: target)
    }
}

//--------------------------------

let pikachu = Hero (name: "Pikachu")
let charizard = Monster (name: "Charizard")

print("pikachu Hp: \(pikachu.cHealth)")
print("charizard Hp: \(charizard.cHealth)")


while (pikachu.cHealth > 0 && charizard.cHealth > 0) {
    let randomNumberForAttack = arc4random_uniform(10) % 2
    if randomNumberForAttack == 0 {
        pikachu.attack(target: charizard)
    }else {
        charizard.attack(target: pikachu)
    }
    
    print("pikachu Hp: \(pikachu.cHealth)")
    print("charizard Hp: \(charizard.cHealth)")
}

