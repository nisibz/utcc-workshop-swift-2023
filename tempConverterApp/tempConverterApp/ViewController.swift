//
//  ViewController.swift
//  tempConverterApp
//
//  Created by Nantachai Sangadsri on 16/9/2566 BE.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var tempTextField: UITextField!
    
    
    @IBAction func convertButtonClicked(_ sender: Any) {
        
        if let num = Int(tempTextField.text!) {
            let result = Double(num) * (1.8) + 32
            resultLabel.text = String(result) + " °F"
        } else {
            resultLabel.text = "Error"
        }
        
        tempTextField.resignFirstResponder()
    }
    
    
    @IBOutlet weak var resultLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

