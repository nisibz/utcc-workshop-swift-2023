//
//  ViewController.swift
//  learnTextFiled
//
//  Created by Nantachai Sangadsri on 16/9/2566 BE.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var userOutput: UILabel!
    
    @IBOutlet weak var userInput: UITextField!
    
    
    @IBAction func clickMe(_ sender: Any) {
        let yourName: String = userInput.text!
        userOutput.text = String ("Hi! \(yourName)")
        userInput.text = ""
        userInput.resignFirstResponder()
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

