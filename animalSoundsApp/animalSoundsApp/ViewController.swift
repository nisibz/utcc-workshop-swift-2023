//
//  ViewController.swift
//  animalSoundsApp
//
//  Created by Nantachai Sangadsri on 23/9/2566 BE.
//

import UIKit

class ViewController: UIViewController {
    
    
    let meowSound = SimpleSound(named: "Meow")
    let woofSound = SimpleSound(named: "Woof")
    let mooSound = SimpleSound(named: "Moo")
    
    
    @IBAction func catButtonTapped(_ sender: Any) {
        meowSound.play()
    }
    
    
    @IBAction func dogButtonTapped(_ sender: Any) {
        woofSound.play()
    }
    
    
    @IBAction func cowButtonTapped(_ sender: Any) {
        mooSound.play()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

