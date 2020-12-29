
//  MapController.swift
//  capture-the-flag
//
//  Created by Yu Lin on 12/12/20.
//

import UIKit
import CoreLocation
class GameController: UIViewController, CLLocationManagerDelegate{
    

    let locationManager: CLLocationManager = CLLocationManager()
    
    @IBOutlet weak var longitude: UILabel!
    @IBOutlet weak var latitude: UILabel!    
    override func viewDidLoad() {
        super.viewDidLoad()
        if (CLLocationManager.locationServicesEnabled()) {
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.requestWhenInUseAuthorization()
            locationManager.startUpdatingLocation()
            let location = locationManager.location?.coordinate
            let lat:Double = (location?.latitude)!
            let lon:Double = (location?.longitude)!
            print(String(lat),String(lon))

        } else {
            print("Location services are not enabled.");
        }
    }


    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        for location in locations {
            print("\(String(describing: index)) : \(location)")
        }
    }
}
