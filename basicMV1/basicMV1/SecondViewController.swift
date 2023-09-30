//
//  SecondViewController.swift
//  basicMV1
//
//  Created by Nantachai Sangadsri on 30/9/2566 BE.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var mySwitch: UISwitch!
    
    
    @IBAction func lightSwitch(_ sender: Any) {
        if mySwitch.isOn {
            view.backgroundColor = .white
        }else {
            view.backgroundColor = .black
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
