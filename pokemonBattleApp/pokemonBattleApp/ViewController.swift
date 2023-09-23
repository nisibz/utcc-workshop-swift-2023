//
//  ViewController.swift
//  pokemonBattleApp
//
//  Created by Nantachai Sangadsri on 23/9/2566 BE.
//

import UIKit
import AVFoundation
import AudioToolbox

class ViewController: UIViewController {
    
    
    @IBOutlet weak var heroHP: UILabel!
    
    @IBOutlet weak var monsterHP: UILabel!
    
    let pikachu = Hero (name: "Pikachu" )
    let charizard = Monster (name: "Charizard")
    
    
    
    @IBAction func resetButton(_ sender: Any) {
        
        pikachu.cHealth = 100.0
        charizard.cHealth = 100.0
        updateLabel ()
    }
    

    @IBAction func attackMethod(_ sender: Any) {
        
        if (pikachu.cHealth > 0 && charizard.cHealth > 0) {
            let randomNumForAttack = arc4random_uniform (10) % 2
            
            if randomNumForAttack == 0 {
                pikachu.attack(target: charizard)
                AudioServicesPlaySystemSound (1328)
            } else {
                charizard.attack(target: pikachu)
                AudioServicesPlaySystemSound (1332)
            }
        }
        updateLabel ()
    }
    
    func updateLabel () {
        if pikachu.cHealth < 25 {
            heroHP.textColor = .red
        } else {
            heroHP.textColor = .white
        }
        
        heroHP.text = String (pikachu.cHealth)
        if charizard.cHealth < 25 {
            monsterHP.textColor = .red
        } else {
            monsterHP.textColor = .white
        }
        monsterHP.text = String(charizard.cHealth)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

