//
//  MapController.swift
//  capture-the-flag
//
//  Created by Yu Lin on 12/12/20.
//

import UIKit
import CoreLocation
class GameController: UIViewController, CLLocationManagerDelegate{

    @IBOutlet weak var longitude: UILabel!
    @IBOutlet weak var latitude: UILabel!
    let locationManager: CLLocationManager = CLLocationManager()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if (CLLocationManager.locationServicesEnabled()) {
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.requestWhenInUseAuthorization()
            locationManager.requestAlwaysAuthorization()
            locationManager.startUpdatingLocation()
            do{
                sleep(60)
            }
            
            let location = locationManager.location?.coordinate
            let lat:Double = (location?.latitude)!
            let lon:Double = (location?.longitude)!
            print(String(lat),String(lon))

        } else {
            print("Location services are not enabled");
        }
    }



    private func locationManager(manager: CLLocationManager!, didFailWithError error: NSError!) {
         locationManager.stopUpdatingLocation()
//         removeLoadingView()
         if (error) != nil {
            print(error ?? "Error can't be parsed")
          }
     }

    func locationManager(manager: CLLocationManager!, didUpdateLocations locations: [AnyObject]!) {
        let locationArray = locations as NSArray
        let locationObj = locationArray.lastObject as! CLLocation
        let coord = locationObj.coordinate
        longitude.text = String(coord.longitude)
        latitude.text = String(coord.latitude)
        longitude.text = "\(coord.longitude)"
        latitude.text = "\(coord.latitude)"
        print("hello")
        
        switch(CLLocationManager.authorizationStatus()) {
        case .authorizedAlways, .authorizedWhenInUse:
            locationManager.startUpdatingLocation()
        case .denied, .notDetermined, .restricted:
            locationManager.stopUpdatingLocation()
        }
    }
}
