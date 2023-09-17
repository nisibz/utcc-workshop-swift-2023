//
//  ViewController.swift
//  lightApp
//
//  Created by Nantachai Sangadsri on 16/9/2566 BE.
//

import UIKit

class ViewController: UIViewController {

    var lightOn = true
    
    @IBAction func btmPressMe(_ sender: Any) {
        
        lightOn.toggle()
        if lightOn {
            view.backgroundColor = .white
        }else {
            view.backgroundColor = .black
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

