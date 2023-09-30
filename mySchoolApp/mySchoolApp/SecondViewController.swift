//
//  SecondViewController.swift
//  mySchoolApp
//
//  Created by Nantachai Sangadsri on 30/9/2566 BE.
//

import UIKit
import WebKit

class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var myWebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url : NSURL = NSURL(string: "https://apple.com")!
        let req = URLRequest(url: url as URL)
        myWebView.load (req)

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
