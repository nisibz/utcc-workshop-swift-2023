//
//  ThirdViewController.swift
//  basicMV1
//
//  Created by Nantachai Sangadsri on 30/9/2566 BE.
//

import UIKit

class ThirdViewController: UIViewController {
    
    var myMessage : String!
    
    
    @IBOutlet weak var showMessage: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        showMessage.text = myMessage
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
