//
//  ViewController.swift
//  countingApp
//
//  Created by Nantachai Sangadsri on 16/9/2566 BE.
//

import UIKit

class ViewController: UIViewController {
    
    
   
    @IBOutlet weak var counting: UILabel!
    
    
    @IBAction func addCount(_ sender: Any) {
        let result: Int = Int(counting.text!)! + 1
        counting.text = String(result)
    }
    
    
    @IBAction func decreaseCount(_ sender: Any) {
        let result: Int = Int(counting.text!)! - 1
        counting.text = String(result)
    }
    
    
    @IBAction func resetCount(_ sender: Any) {
        counting.text = String(0)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

