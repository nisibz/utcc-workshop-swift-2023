//
//  DetailViewController.swift
//  MD01
//
//  Created by Nantachai Sangadsri on 7/10/2566 BE.
//

import UIKit

class DetailViewController: UIViewController {
    
    var yourSelected: String = ""
    
    
    @IBOutlet weak var yourSelectedLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.title = yourSelected
        yourSelectedLabel.text = "You have selected \(yourSelected)"
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
