//
//  ThirdViewController.swift
//  mySchoolApp
//
//  Created by Nantachai Sangadsri on 30/9/2566 BE.
//

import UIKit
import MapKit

class PinAnnotation: NSObject, MKAnnotation {
    var title:String?
    var subtitle:String?
    var coordinate: CLLocationCoordinate2D
    
    init (title:String, subTitle: String, coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.subtitle = subTitle
        self.coordinate = coordinate
    }
}

class ThirdViewController: UIViewController {

    @IBOutlet weak var myMapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let location = CLLocationCoordinate2DMake (13.74497, 100.53986)
        
        myMapView.setRegion(MKCoordinateRegion(
            center: location,
            latitudinalMeters: 1000,
            longitudinalMeters: 1000),
            animated: true)
        
        let myPin = PinAnnotation(title: "Apple Central World", subTitle: "Apple Store สาขา Central World", coordinate: location)
        
        myMapView.addAnnotation(myPin)
        
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
