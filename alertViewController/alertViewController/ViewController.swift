//
//  ViewController.swift
//  alertViewController
//
//  Created by Nantachai Sangadsri on 23/9/2566 BE.
//

import UIKit

class ViewController: UIViewController {

    
    @IBAction func showBasicAlert(_ sender: Any) {
        
        let alertController = UIAlertController(
            title: "My First Alert", message: "Have a nice say", preferredStyle: .alert
        )
        
        let OKButton = UIAlertAction(title: "OK", style: .default, handler: {(action) -> Void in print("You press OK")})
        
        alertController.addAction(OKButton)
        self.present (alertController, animated: true, completion: nil)
    }
    
    
    @IBOutlet weak var label: UILabel!
    
    
    @IBAction func alertWithAction(_ sender: Any) {
        
        let alertController = UIAlertController(
            title: "Drink Menu",
            message: "'What would you like to drink ?",
            preferredStyle: .alert
        )
        
        let cancleButton = UIAlertAction(
            title: "No Thank!",
            style: .cancel,
            handler: {(action) -> Void in self.label.text = "You don't drink!"}
        )
        
        alertController.addAction(cancleButton)
        
        let coffeeButton = UIAlertAction(
            title: "Coffee",
            style: .default,
            handler: {(action) -> Void in self.label.text = "You selected coffee"}
        )
        
        alertController.addAction(coffeeButton)
        
        let teaButton = UIAlertAction(
            title: "Tea",
            style: .default,
            handler: {(action) -> Void in self.label.text = "You selected tea"}
        )
        
        alertController.addAction(teaButton)
        
        self.present (alertController, animated: true, completion: nil)
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

